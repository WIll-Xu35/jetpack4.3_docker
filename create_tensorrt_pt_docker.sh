apt-get update
apt-get install -y vim python3 python3-pip git
pip3 install cython pycuda

cd /root
pip3 install torch-1.2.0-cp36-cp36m-manylinux1_x86_64.whl
pip3 install torchvision-0.4.0-cp36-cp36m-manylinux1_x86_64.whl
dpkg -i nv-tensorrt-repo-ubuntu1804-cuda10.0-trt6.0.1.5-ga-20190913_1-1_amd64.deb
apt-key add /var/nv-tensorrt-repo-cuda10.0-trt6.0.1.5-ga-20190913/7fa2af80.pub
apt-get update
apt-get install -y libnvinfer6=6.0.1-1+cuda10.0 libnvinfer-plugin6=6.0.1-1+cuda10.0 libnvparsers6=6.0.1-1+cuda10.0 libnvonnxparsers6=6.0.1-1+cuda10.0 libnvinfer-bin=6.0.1-1+cuda10.0 libnvinfer-dev=6.0.1-1+cuda10.0 libnvinfer-plugin-dev=6.0.1-1+cuda10.0 libnvparsers-dev=6.0.1-1+cuda10.0 libnvonnxparsers-dev=6.0.1-1+cuda10.0 libnvinfer-samples=6.0.1-1+cuda10.0 libnvinfer-doc=6.0.1-1+cuda10.0
apt-get install -y tensorrt
apt-get install -y python3-libnvinfer=6.0.1-1+cuda10.0 python3-libnvinfer-dev=6.0.1-1+cuda10.0

rm /etc/apt/sources.list.d/nv-tensorrt-cuda10.0-trt6.0.1.5-ga-20190913.list
rm -r /var/nv-tensorrt-repo-cuda10.0-trt6.0.1.5-ga-20190913/

apt-get update

cd /root
git clone https://github.com/NVIDIA-AI-IOT/torch2trt
cd torch2trt
python3 setup.py install
