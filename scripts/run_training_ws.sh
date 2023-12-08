#!/bin/bash
xhost + 
docker run --rm -it -u ros --network host  \
-v "/tmp/.X11-unix:/tmp/.X11-unix" -e DISPLAY=$DISPLAY --volume "/dev/:/dev/" \
ros2-galactic-setup:latest
