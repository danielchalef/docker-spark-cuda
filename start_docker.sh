#!/bin/bash
DOCKER_NVIDIA_DEVICES="--device /dev/nvidia0:/dev/nvidia0 --device /dev/nvidia1:/dev/nvidia1 --device /dev/nvidia2:/dev/nvidia2 --device /dev/nvidia3:/dev/nvidia3 --device /dev/nvidiactl:/dev/nvidiactl --device /dev/nvidia-uvm:/dev/nvidia-uvm"
docker run -ti -p 8888:8888 -e IP=0.0.0.0 --name scala-cuda -v /home/daniel/analytics:/data $DOCKER_NVIDIA_DEVICES danielchalef/scala-cuda

