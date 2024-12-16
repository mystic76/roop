#!/bin/bash
lscpu
sleep 5
clear
echo "Starting Roop-Unleashed"
sleep 2
echo "installing packages from"
echo "github.com/abhiram79/"
sleep 5
apt-get -y update
apt-get -y install cuda-toolkit-11-8
import os
os.environ["LD_LIBRARY_PATH"] += ":" + "/usr/local/cuda-11/lib64"
os.environ["LD_LIBRARY_PATH"] += ":" + "/usr/local/cuda-11.8/lib64"
git clone https://github.com/C0untFloyd/roop-unleashed.git
%cd roop-unleashed
mv config_colab.yaml config.yaml
pip install -r requirements.txt
clear
echo "Connecting to GUI"
sleep 4
clear
echo "Run the second cell now!"
#end

