#! /bin/bash
this_script_path="$(realpath $BASH_SOURCE)"
scripts_path=$(dirname $this_script_path) 
export ROS2_WS_DIR=$(dirname $scripts_path)
# echo `dirname $this_script_path`
echo "now ros2_ws_dir is: $ROS2_WS_DIR"

# create volume folders with the right permissions 
mkdir -p ${ROS2_WS_DIR}/install ${ROS2_WS_DIR}/docker_save ${ROS2_WS_DIR}/docker_build 
export PATH=$PATH:$scripts_path
