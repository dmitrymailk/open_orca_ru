# FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime
FROM pytorch/pytorch:2.1.0-cuda12.1-cudnn8-devel
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install \
	git curl numactl wget libmpich-dev python3-dev \
	openmpi-bin openmpi-common openmpi-doc libopenmpi-dev -y 
ENV MPICC=/opt/ompi/bin/mpicc
ENV MPICXX=/opt/ompi/bin/mpicxx
RUN CC=${MPICC} pip install mpi4py==3.1.5

WORKDIR /code