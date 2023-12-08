FROM althack/ros2:galactic-dev 

RUN apt update

RUN apt -y install ros-galactic-turtlesim ros-galactic-rqt*

RUN apt -y install python3-colcon-common-extensions

USER ros
ARG WORKSPACE="/home/ros/dev_ws"
WORKDIR ${WORKSPACE}


# colcon and colcon_cd completions
RUN echo "source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash" >> ~/.bashrc
RUN echo "source /usr/share/colcon_cd/function/colcon_cd.sh" >> ~/.bashrc
RUN echo "export _colcon_cd_root=${WORKSPACE}" >> ~/.bashrc

