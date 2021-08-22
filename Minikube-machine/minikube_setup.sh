#!/bin/bash

echo "[TASK 1] Install Yum Utils"
yum install -y yum-utils
echo "[TASK 2] Install Docker"
yum-config-manager  --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce
systemctl enable docker
systemctl start docker
sudo usermod -aG docker vagrant
echo "[TASK 3] Install MiniKube"
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
install minikube-linux-amd64 /usr/local/bin/minikube
echo "[TASK 4] Install Kubectl"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl