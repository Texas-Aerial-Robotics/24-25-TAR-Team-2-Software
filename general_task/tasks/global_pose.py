import asyncio
from mavsdk import System
from mavsdk.offboard import VelocityBodyYawspeed
from mavsdk.action import OrbitYawBehavior
import cv2
import cv2.aruco as aruco
import gi
import numpy as np

gi.require_version("Gst", "1.0")
from gi.repository import Gst

markerLength = 10.0
calib_path = "./opencv/"
camera_matrix = np.loadtxt(calib_path + "cameraMatrix_webcam.txt", delimiter=",")
camera_distortion = np.loadtxt(
    calib_path + "cameraDistortion_webcam.txt", delimiter=","
)
object_points = np.array(
    [
        [-markerLength / 2, markerLength / 2, 0],
        [markerLength / 2, markerLength / 2, 0],
        [markerLength / 2, -markerLength / 2, 0],
        [-markerLength / 2, -markerLength / 2, 0],
    ],
    dtype=np.float32,
)


class Video:
    def __init__(self, port=5600):
        Gst.init(None)

        self.port = port
        self._frame = None

        self.video_source = "udpsrc port = {}".format(self.port)
        self.video_codec = (
            "! application/x-rtp, payload=96 ! rtph264depay ! h264parse ! avdec_h264"
        )

        self.video_decode = (
            "! decodebin ! videoconvert ! video/x-raw,format=(string)BGR ! videoconvert"
        )

        self.video_sink_conf = (
            "! appsink emit-signals=true sync=false max-buffers=2 drop=true"
        )

        self.video_pipe = None
        self.video_sink = None

        self.run()

    def start_gst(self, config=None):
        if not config:
            config = [
                "videotestsrc ! decodebin",
                "! videoconvert ! video/x-raw,format=(string)BGR ! videoconvert",
                "! appsink",
            ]

        command = " ".join(config)
        self.video_pipe = Gst.parse_launch(command)
        self.video_pipe.set_state(Gst.State.PLAYING)
        self.video_sink = self.video_pipe.get_by_name("appsink0")

    @staticmethod
    def gst_to_opencv(sample):
        buf = sample.get_buffer()
        caps = sample.get_caps()
        array = np.ndarray(
            (
                caps.get_structure(0).get_value("height"),
                caps.get_structure(0).get_value("width"),
                3,
            ),
            buffer=buf.extract_dup(0, buf.get_size()),
            dtype=np.uint8,
        )

        return array

    def frame(self):
        return self._frame

    def frame_available(self):
        return self._frame is not None

    def run(self):
        self.start_gst(
            [
                self.video_source,
                self.video_codec,
                self.video_decode,
                self.video_sink_conf,
            ]
        )

        self.video_sink.connect("new-sample", self.callback)

    def callback(self, sink):
        sample = sink.emit("pull-sample")
        new_frame = self.gst_to_opencv(sample)
        self._frame = new_frame
        return Gst.FlowReturn.OK


def findMarkers(img):
    imgGray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

    arucoDict = aruco.getPredefinedDictionary(aruco.DICT_4X4_250)
    arucoParams = aruco.DetectorParameters()
    arucoDetector = aruco.ArucoDetector(arucoDict, arucoParams)

    bbox, ids, rejected = arucoDetector.detectMarkers(imgGray)

    return img, [bbox, ids]


def estimatePose(img, markerCorners, markerIds):
    # Incase there are multiple markers, loop through them to get poses
    for i in range(len(markerIds)):
        ret, rvec, tvec = cv2.solvePnP(
            object_points, markerCorners[i], camera_matrix, camera_distortion
        )

    cv2.drawFrameAxes(img, camera_matrix, camera_distortion, rvec, tvec, markerLength)
    print("X:", tvec[0], "Y:", tvec[1], "Z:", tvec[2])
    
    return rvec, tvec
    
def rotation_matrix(yaw, pitch, roll):
    # Convert angles from degrees to radians
    yaw, pitch, roll = map(np.radians, [yaw, pitch, roll])

    Rz = np.array([[np.cos(yaw), -np.sin(yaw), 0], [np.sin(yaw), np.cos(yaw), 0], [0, 0, 1]])
    Ry = np.array([[np.cos(pitch), 0, np.sin(pitch)], [0, 1, 0], [-np.sin(pitch), 0, np.cos(pitch)]])
    Rx = np.array([[1, 0, 0], [0, np.cos(roll), -np.sin(roll)], [0, np.sin(roll), np.cos(roll)]])

    return Rz @ Ry @ Rx 

def transform_marker_to_global(tvec, drone_position, drone_orientation):
    # Convert the drone's orientation to a rotation matrix
    R_global = rotation_matrix(
        drone_orientation["yaw"], drone_orientation["pitch"], drone_orientation["roll"]
    )
    
    # Apply the transformation to get the global position of the marker
    tvec_global = R_global @ tvec + np.array([
        [drone_position["latitude"]],
        [drone_position["longitude"]],
        [drone_position["altitude"]]
    ])
    
    return tvec_global.flatten()


async def main():
    drone = System()
    await drone.connect(system_address="udp://:14540")

    print("Waiting for drone to connect...")
    async for state in drone.core.connection_state():
        if state.is_connected:
            print("Connected to drone!")
            break

    print("--Arming")
    await drone.action.arm()

    print("--Taking off")
    await drone.action.takeoff()

    await asyncio.sleep(11)

    # initial_velocity = VelocityBodyYawspeed(0.0, 0.0, 0.0, 0.0)
    # await drone.offboard.set_velocity_body(initial_velocity)

    # print("-- Setting offboard mode")
    # await drone.offboard.start()

    async for position in drone.telemetry.position():
        drone_position = {'latitude': position.latitude_deg, 'longitude': position.longitude_deg, 'altitude': position.absolute_altitude_m}
        break
    
    async for euler_angle in drone.telemetry.attitude_euler():
        drone_orientation = {'yaw': euler_angle.yaw_deg, 'pitch': euler_angle.pitch_deg, 'roll': euler_angle.roll_deg}
        break
    
    print(f"Current Position -> Latitude: {drone_position['latitude']}, "
      f"Longitude: {drone_position['longitude']}, "
      f"Altitude: {drone_position['altitude']}, "
      f"Yaw: {drone_orientation['yaw']}, "
      f"Pitch: {drone_orientation['pitch']}, "
      f"Roll: {drone_orientation['roll']}")

    print("Orbit")
    await drone.action.do_orbit(
        5,
        1,
        OrbitYawBehavior.HOLD_FRONT_TO_CIRCLE_CENTER,
        drone_position['latitude'],
        drone_position['longitude'],
        drone_position['altitude'],
    )

    await asyncio.sleep(2)

    video = Video()

    while True:
        if video.frame_available():
            frame = video.frame()
            copy_frame = frame.copy()
            detected_frame, (markerCorners, markerIds) = findMarkers(copy_frame)

            cv2.imshow("Drone Camera Stream with ArUco Detection", detected_frame)
            if markerIds is not None:
                print("Tag detected.")
                rvec, tvec = estimatePose(detected_frame,markerCorners,markerIds)
                global_position = transform_marker_to_global(tvec, drone_position, drone_orientation)
                print(f"Global Position of marker: Latitude={global_position[0]}, Longitude={global_position[1]}, Altitude={global_position[2]}")
                print(f"Current Position -> Latitude: {drone_position['latitude']}, "
                    f"Longitude: {drone_position['longitude']}, "
                    f"Altitude: {drone_position['altitude']}, "
                    f"Yaw: {drone_orientation['yaw']}, "
                    f"Pitch: {drone_orientation['pitch']}, "
                    f"Roll: {drone_orientation['roll']}")               
                print("Moving to the detected marker's position...")
                await drone.action.goto_location(
                global_position[0], global_position[1], global_position[2], drone_orientation["yaw"]
            )
            print("Nothing :(")
            if cv2.waitKey(1) & 0xFF == ord("q"):
                break
            await asyncio.sleep(0.1)


if __name__ == "__main__":
    asyncio.run(main())
