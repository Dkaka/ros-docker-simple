#!/bin/bash

set -e

PROJECT_ROOT="$(cd "$(dirname "$0")"; cd ..; pwd)"
xhost +
docker run -it \
  --volume=/tmp/.X11-unix:/tmp/.X11-unix \
  --device=/dev/dri:/dev/dri \
  --env="DISPLAY=$DISPLAY" \
  --name ros-docker-simple \
  --volume ${PROJECT_ROOT}/catkin_ws:/catkin_ws \
  --rm \
  ros-docker-simple "$@"


docker exec ros-docker-simple /bin/sh -c "cd catkin_ws;source devel/setup.bash;roslaunch turtlebot3_gazebo simulation.launch ;roslaunch turtlebot3_gazebo simulation.launch"
# Share a device with the Docker container by adding:
#   --device=/dev/ttyUSB0 \
# below the line containing "--name"
