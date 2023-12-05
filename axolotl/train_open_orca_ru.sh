export CUDA_VISIBLE_DEVICES=1,2
# export LD_LIBRARY_PATH=(/opt/conda/lib/python3.10/site-packages/nvidia/cuda_runtime/lib/libcudart.so.11.0):$LD_LIBRARY_PATH
accelerate launch -m axolotl.cli.train examples/mistral/config.yml 