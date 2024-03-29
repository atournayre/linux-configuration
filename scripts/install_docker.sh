#!/bin/bash

install_docker()
{
  sudo apt-get remove docker docker-engine docker.io containerd runc
  update
  sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

  echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

  update
  sudo apt-get -y install docker-ce docker-ce-cli containerd.io

  sudo docker run hello-world
}
