#!/usr/bin/bash

echo "updating system"
sudo apt update

echo "checking version of git"
git --version

echo "download git"
sudo apt install git -y

echo "cloning the repos"
git clone https://github.com/Jit1105/AWS-ALB.git

echo "downloading python"
sudo apt install python3

echo "download fastapi"
sudo apt install python3-fastapi

echo "running fastApi application"
python3 /home/ubuntu/AWS-ALB/main.py

echo "done"