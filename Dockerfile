FROM ros:melodic-ros-core-bionic
# install ros tutorials packages
RUN apt-get update && apt-get install -y \
    tmux \
    mesa-utils\ 
    ros-melodic-gazebo-ros \
    ros-melodic-robot-state-publisher \
    ros-melodic-urdf-sim-tutorial \
    ros-melodic-rviz \
    ros-melodic-rqt-robot-steering \
    ros-melodic-depthimage-to-laserscan \
    ros-melodic-map-server \
    ros-melodic-fake-localization \
    ros-melodic-move-base \
    gazebo9\
    ros-melodic-gazebo-plugins \
    ros-melodic-spatio-temporal-voxel-layer \
    ros-melodic-dwa-local-planner \
    && echo "source /catkin_ws/devel/setup.bash" >> /root/.bashrc \
# RUN apt-get update && apt-get install -y \
# tmux \: terminal multiplexier
# mesa-utils\ intel-graphics hardware acceleration for xsever (otherwise the framerate is low) http://wiki.ros.org/docker/Tutorials/Hardware%20Acceleration
# ros-melodic-gazebo-ros \ gazebo-ros bridge
# ros-melodic-robot-state-publisher \
# ros-melodic-urdf-sim-tutorial \
# ros-melodic-rviz \
# ros-melodic-rqt-robot-steering \
# ros-melodic-depthimage-to-laserscan \
# ros-melodic-map-server \
# ros-melodic-fake-localization \
# ros-melodic-move-base \
# gazebo9\ gazebo
# ros-melodic-gazebo-plugins \
# ros-melodic-spatio-temporal-voxel-layer \
# ros-melodic-dwa-local-planner \
# && echo "source /catkin_ws/devel/setup.bash" >> /root/.bashrc \
# FROM ros:melodic-ros-core-bionic
# # install ros packages
# RUN apt-get update && apt-get install -y \
#     ros-melodic-ros-base=1.4.1-0* \
# Do we want to remove the apt list file to forbid installation and save storage?    
#    && rm -rf /var/lib/apt/lists/*