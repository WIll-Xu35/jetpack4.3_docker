# jetpack4.3_docker
instructions for building basic environments like jetpack4.3 based on nvidia CUDA docker



## Environment after installation

python 3.6.9

CUDA 10.0

cuDNN 7.6.5

TensorRT 6.0.1

torch 1.2.0

torchvision 0.4.0

etc.



## Download corresponding resources

* Base docker with CUDA 10.0 from nvidia

  `docker pull nvidia/cuda:10.0-devel-ubuntu18.04`

* TensorRT

  [TensorRT 6.0.1.5 GA for Ubuntu 1804 and CUDA 10.0 DEB local repo packages](https://developer.nvidia.com/compute/machine-learning/tensorrt/secure/6.0/GA_6.0.1.5/local_repos/nv-tensorrt-repo-ubuntu1804-cuda10.0-trt6.0.1.5-ga-20190913_1-1_amd64.deb)

  Need Nvidia Developer account for access.

* Torch & Torchvision

  [Torch 1.2.0](https://download.pytorch.org/whl/cu100/torch-1.2.0-cp36-cp36m-manylinux1_x86_64.whl)

  [Torchvision 0.4.0](https://download.pytorch.org/whl/cu100/torchvision-0.4.0-cp36-cp36m-manylinux1_x86_64.whl)



## Start making the docker

1. start the base docker with:

   `docker run --gpus 0 --name tensorrt_test -it nvidia/cuda:10.0-devel-ubuntu18.04 bash` 

2. copy the needed file to docker in another terminal:

   `docker cp nv-tensorrt-repo-ubuntu1804-cuda10.0-trt6.0.1.5-ga-20190913_1-1_amd64.deb tensorrt_test:/root`

   `docker cp torch-1.2.0-cp36-cp36m-manylinux1_x86_64.whl tensorrt_test:/root`

   `docker cp torchvision-0.4.0-cp36-cp36m-manylinux1_x86_64.whl tensorrt_test:/root`

   `docker cp create_tensorrt_pt_docker.sh tensorrt_test:/root`

3. go to the docker terminal and execute the bash script:

   `bash create_tensorrt_pt_docker.sh`

   

## TODO

- [ ] opencv





