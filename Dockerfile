# FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime
FROM pytorch/pytorch:2.1.0-cuda12.1-cudnn8-devel
RUN apt-get update && apt-get upgrade -y && apt-get install git curl numactl wget -y 


WORKDIR /code