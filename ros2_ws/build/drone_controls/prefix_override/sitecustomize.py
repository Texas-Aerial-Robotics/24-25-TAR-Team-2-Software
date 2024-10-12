import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/joshua_caratao/24-25-TAR-Team-2-Software/ros2_ws/install/drone_controls'
