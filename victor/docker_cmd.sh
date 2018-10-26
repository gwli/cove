tag="nvdevtools/pytorch:0.2.0-cuda-8.0"

nvidia-docker run --privileged  -e DISPLAY  --net=host --ipc=host -it --rm -p 5022:5022 -p 7022:22 \
     -v $HOME/.Xauthority:/home/nvidia/.Xauthority \
     -v /raid/dl_samples:/raid/dl_samples \
     -v /raid/tools:/raid/tools \
     -w `pwd`  \
     $tag /bin/bash
