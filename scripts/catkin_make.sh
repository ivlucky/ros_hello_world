#!/usr/bin/env bash
catkin_make
line_source="source /workspaces/ros_hello_world/devel/setup.bash"
if grep -Fxq "$line_source" ~/.bashrc
then
    # code if found
    echo "line_source in ~/.bashrc was found, ignoring append"
else
    # code if not found
    echo $line_source >> ~/.bashrc
fi
echo "OK! After that run: source ~/.bashrc"