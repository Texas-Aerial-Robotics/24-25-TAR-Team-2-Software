# 24-25-TAR-Team-2-Software
#### Editors: Joshua Caratao

Drone Software  and setup for 2024-25 TAR Team 2

# Software Workstation Setup

## Setting Up WSL with Ubuntu 20.04 on Windows
Recommended software setup is through Windows Subsystem for Linux (WSL) feature. WSL is a compatibility layer that allows linux distributions like Ubuntu to run directly on Windows without needing a virtual machine or separate hardware. It's built into Windows and provides seamless integration between the Windows and Linux environments.

### Prerequisites
1. Windows 10 Version 1903 or higher.
2. Administrator access to install software and enable WSL.

### Steps

#### 1. Enable WSL
1. Open PowerShell as Administrator.
2. Run the following command to enable WSL and install the required features:

        wsl --install

#### 2. Set WSL Version to WSL2
By default, WSL 2 will be set up, but if you need to manually configure it:
1. Open PowerShell as Administrator and run:

        wsl --set-default-version 2

This sets WSL 2 as the default version for any new Linux distributions.

#### 3. Install Ubuntu 20.04

  Now that WSL is enabled, you can install Ubuntu 20.04 using the following command:
  
  *NOTE: DO NOT FORGET YOUR USER NAME AND PASSWORD. WRITE IT DOWN
  
      wsl --install -d Ubuntu-20.04

  This command will: Download and install Ubuntu 20.04 on your WSL instance and set it up as your default WSL distribution.

#### 4. Launch WSL Ubuntu 20.04
After the installation is complete, you can launch Ubuntu 20.04 using the following command:

    wsl -d Ubuntu-20.04

*Note: If this is your default or only distribution, you may launch Ubuntu using the following command:

    wsl

#### 5. Update and Upgrade Ubuntu 20.04
Once you're inside the Ubuntu 20.04 environment, it’s a good idea to update the package manager and upgrade the installed packages:

    sudo apt update && sudo apt upgrade -y

#### 6. Verify Installation
You can verify that Ubuntu 20.04 is running by checking the Ubuntu version inside the WSL terminal:

    lsb_release -a

#### 7. Finished!
After step 6, if no problems occured, your WSL and Ubuntu setup should be complete. You can now continue forward with PX4 and ROS Installation!

## PX4 and ROS Installation
This year, we will be developing drone software using PX4 and ROS2. 

### What is PX4?
PX4 is an open-source autopilot framework designed for autonomous drones and other unmanned vehicles. It provides a flight control system that can be used to develop   software for multirotors, fixed-wing aircraft, and other autonomous vehicles. PX4 handles critical tasks such as:

- Flight control
- Sensor fusion
- GPS-based navigation
- Handling motor outputs
- Drone configuration and safety features
- PX4 is widely used in research, commercial drones, and hobbyist projects.

### What is ROS2?
ROS2 (Robot Operating System 2) is the second generation of the Robot Operating System, designed to provide a flexible and scalable middleware framework for building robotic applications. It is widely used in autonomous systems because of its modular architecture and features such as:

- Real-time communications
- Distributed systems
- Support for various hardware and sensors
- Easily integrating different robotic components
  
PX4 and ROS2 are often used together to develop autonomous drone systems. While PX4 handles low-level control and sensor fusion, ROS2 acts as the middleware for higher-level functions such as path planning, object detection, and mission control.

### Installations
Please refer to the following link for further instructions on PX4 and ROS installations. This source comes straight from the PX4 Documenation and will guide you through installing:
- PX4
- ROS2
- Micro XRCE-DDS Agent and Client (Used for communication between PX4 and ROS2)

It will also guide you through Building and Running your ROS 2 Workspace

    https://docs.px4.io/main/en/ros2/user_guide#install-px4












  

   



