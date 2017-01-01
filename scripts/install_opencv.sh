#!/bin/bash

# See:
#   * http://docs.opencv.org/2.4/doc/tutorials/introduction/linux_install/linux_install.html#linux-installation

# Run this script as sudo
apt-get -y install build-essential curl wget

# Install cmake.
wget https://cmake.org/files/v3.5/cmake-3.5.0-Linux-x86_64.tar.gz
mv cmake-3.5.0-Linux-x86_64 /opt/
export PATH=/opt/make-3.5.0-Linux-x86_64/bin:$PATH

# Required
apt-get -y install git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev

# Optional
apt-get -y install python-dev python3-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
apt-get -y install qt5-default

git clone https://github.com/Itseez/opencv.git opencv
cd opencv
mkdir release 
cd release
cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D BUILD_NEW_PYTHON_SUPPORT=ON \
      -D INSTALL_PYTHON_EXAMPLES=ON \
      -D BUILD_EXAMPLES=ON \
      -D WITH_QT=ON \
      -D WITH_OPENGL=ON \
      ..

make -j
make install
ldconfig