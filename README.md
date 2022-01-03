# ros_hello_world
hello_world project in docker container with xrdp+desktop+ros noetic full+gazebo

## Requirements
1. OS Ubuntu 20.04.3 LTS
2. vscode
3. Docker
4. 10 Gb free space (with a large margin)
5. 8 Gb RAM

## VScode extentions in local
1. Remote development
2. Docker

## ROS dependencies
1. std_msgs 
2. rospy

## How to run project
1. `git clone git@github.com:ivlucky/ros_hello_world.git`
2. `cd ros_hello_world/ && code .`
3. Press F1 -> `Remote-Containers: Open Folder in container...`
4. Wait
5. (In the first time) In the terminal run: `rosdep update`
6. Run `./scripts/catkin_make.sh` in the repo
7. Run `source ~/.bashrc`
8. In new terminal run `roscore`
9. In new terminal run `rosrun hello_world hello_world_publisher.py`
10. In new terminal run `rosrun hello_world hello_world_subscriber.py`

## How to remote desktop
1. Install [Remmina](https://remmina.org/)
2. Open Remmina
3. Write session config (host as localhost and name of session)
4. Enjoy!

## How to run Gazebo
1. In terminal in Reminna rdp session run `rosrun gazebo_ros gazebo`

## Issues
1. Russian locale in login 
**Solution**: reboot your OS
2. Unable to login after writing user/password
**Solution**: remove and create container

## Notes
1. If you want to exit session without remove/create container, you have to Logout from session in rdp window