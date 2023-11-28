
apt install libmpich-dev python3-dev -y
export MPICC=/opt/ompi/bin/mpicc
CC=${MPICC} 
pip install mpi4py==3.1.5