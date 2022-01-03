#!/usr/bin/env bash
apt update -y
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
apt-get install -y gnupg2
apt install curl -y # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -
apt update -y
apt install ros-noetic-desktop-full -y
echo "source /opt/ros/noetic/setup.bash" >> /home/ubuntu/.bashrc
source /home/ubuntu/.bashrc
apt --fix-broken install -y
apt install python3-rospkg-modules python3-catkin-pkg-modules python3-rosdistro-modules -y
apt install python3-rosinstall python3-rosinstall-generator python3-wstool build-essential -y
apt install python3-rosdep -y
apt-get install ros-noetic-gazebo-ros-pkgs ros-noetic-ros-control
rosdep init
echo "after script run as non-root user: rosdep update"