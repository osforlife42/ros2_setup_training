FROM althack/ros2:galactic-dev 

RUN apt update

RUN apt -y install ros-galactic-turtlesim ros-galactic-rqt*

USER ros
ARG WORKSPACE="/home/ros/dev_ws"

WORKDIR ${WORKDIR}

