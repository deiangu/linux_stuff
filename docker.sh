#!/bin/bash
# add dependencies
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
# add docker repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
# install docker
sudo apt-get update
sudo apt install -y docker-ce=17.09.0~ce-0~ubuntu
# Make sure you can run docker without sudo
# (based on https://docs.docker.com/engine/installation/linux/linux-postinstall/#manage-docker-as-a-non-root-user)
sudo usermod -aG docker $USER
# Log out and log back in so that your group membership is re-evaluated
# (close and open terminal window).
# Someone had to restart their entire machine, but that should not be necessary.