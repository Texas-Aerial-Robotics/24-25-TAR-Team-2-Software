import rclpy
from rclpy.node import Node
from px4_msgs.msg import VehicleCommand, VehicleControlMode
from geometry_msgs.msg import PoseStamped
import time
from rclpy.qos import QoSProfile, QoSReliabilityPolicy


class DroneController1(Node):
    def __init__(self):
    
        super().__init__('drone_controller_1')

        qos_profile_command = QoSProfile(depth=50)  # Larger queue for critical commands
        qos_profile_setpoint = QoSProfile(depth=20)  # Reasonable queue for frequent setpoints

        qos_profile_command.reliability = QoSReliabilityPolicy.BEST_EFFORT
        qos_profile_setpoint.reliability = QoSReliabilityPolicy.BEST_EFFORT

        #Publisher for sending commands to PX4
        self.vehicle_command_pub = self.create_publisher(VehicleCommand, '/fmu/in/vehicle_command', qos_profile_command)
        self.local_pos_setpoint_pub = self.create_publisher(PoseStamped, '/fmu/in/vehicle_local_position', qos_profile_setpoint)

        #Postition Setpoint publisher timer
        #self.setpoint_rate = self.create_timer(0.2, self.publish_setpoint)

        #Subscribers
        self.control_mode_sub = self.create_subscription(VehicleControlMode, '/fmu/out/vehicle_control_mode', self.control_mode_callback, qos_profile_command)

        #Target Takeoff Altitude
        self.target_altitude = 5.0 #Takeoff to 5 meters

        #latest control mode status
        self.latest_control_mode = None
        self.is_armed = False
        self.is_offboard = False

        self.past_time_control_mode = 0
        self.past_time_set_point = 0
        self.past_time_arm = 0
        self.past_time_offb = 0
   
    def send_vehicle_command(self, command, param1 = 0.0, param2 = 0.0):
        #Send a command to PX4
        msg = VehicleCommand()
        msg.param1 = param1
        msg.param2 = param2
        msg.command = command
        msg.target_system = 1
        msg.target_component = 1
        msg.source_system = 1
        msg.source_component = 1
        msg.confirmation = 0
        self.vehicle_command_pub.publish(msg)

    def arm(self):
        #Arm the drone
        self.get_logger().info("Sending Arm Command...")
        self.send_vehicle_command(command = 400, param1 = 1.0) # 400 = MAV_CMD_COMPONENT_ARM_DISARM

    def control_mode_callback(self, msg):
        if time.time() - self.past_time_control_mode >= 0.5:
            self.latest_control_mode = msg
            if self.latest_control_mode.flag_armed:
                self.is_armed = True
            else:
                self.is_armed = False
            
            if self.latest_control_mode.flag_control_offboard_enabled:
                self.is_offboard = True
            else:
                self.is_offboard = False

    def set_offboard_mode(self):
        #Switch to offboard mode
        self.get_logger().info("Setting OFFBOARD mode...")
        self.send_vehicle_command(command = 176, param1 = 1.0) # 176 = MAV_CMD_DO_SET_MODE

    def publish_setpoint(self, xyz_coords):
        #Publish a takeoff setpoint
        pose = PoseStamped()
        pose.pose.position.x = xyz_coords[0]
        pose.pose.position.y = xyz_coords[1]
        pose.pose.position.z = xyz_coords[2]  # Target altitude
        self.local_pos_setpoint_pub.publish(pose)
        self.get_logger().info("Pulishing Setpoints -- x: " + str(pose.pose.position.x) + "y: " + str(pose.pose.position.y) + "z: " + str(pose.pose.position.z))
    
    def takeoff(self):
        # Wait for PX4 to be connected
        self.get_logger().info("Waiting for connection to PX4...")
        while not self.latest_control_mode:
            rclpy.spin_once(self)  # Ensure the node keeps spinning to check connection status
        self.get_logger().info("PX4 CONNECTION ESTABLISHED")

        # Send setpoints before switching to OFFBOARD mode
        self.get_logger().info("PUBLISHING INITIAL SETPOINTS")
        for _ in range(100):
            self.publish_setpoint([0.0,0.0,self.target_altitude])
            time.sleep(0.05)  # Publish at 20Hz

        # Switch to OFFBOARD mode
        self.get_logger().info("STARTING TO SET OFFBOARD MODE")
        while not self.is_offboard:
            self.set_offboard_mode()
            self.publish_setpoint([0.0,0.0,self.target_altitude])
            time.sleep(0.05)
        self.get_logger().info("OFFBOARD MODE ENABLED")


        self.get_logger().info("STARTING TO ARM DRONE")
        while not self.is_armed:
            #Arm before setting offboard mode
            self.arm()
            time.sleep(0.05)
        self.get_logger().info("DRONE SUCCESSFULLY ARMED")
        self.get_logger().info("Drone should be armed and taking off")

        while self.is_armed:
            self.publish_setpoint([0.0,0.0,self.target_altitude])

def main(args=None):
    rclpy.init(args=args)
    node = DroneController1()

    try:
        node.takeoff()
        rclpy.spin(node)
    except KeyboardInterrupt:
        pass
    finally:
        node.destroy_node()
        rclpy.shutdown()


