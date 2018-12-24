#! /bin/bash

yum -y gcc zlib-devel libffi-devel
wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tar.xz
tar xzvf Python-3.6.1.tar.xz
cd Python-3.6.1
./configure --prefix=/home/ubuntu/.local CXX="/usr/bin/g++"
./configure --prefix=/home/ubuntu/.local CXX="/usr/bin/g++" --enable-optimizations
make altinstall
source ~/.profile
rm Python-3.6.1.tar.xz
python3.6 -V