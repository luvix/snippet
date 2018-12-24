#! /bin/bash

sudo apt install build-essential checkinstall openssl
sudo apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tar.xz
tar xvf Python-3.6.1.tar.xz
cd Python-3.6.1
./configure --prefix=/home/ubuntu/.local CXX="/usr/bin/g++"
./configure --prefix=/home/ubuntu/.local CXX="/usr/bin/g++" --enable-optimizations
make altinstall
source ~/.profile
rm Python-3.6.1.tar.xz
python3.6 -V