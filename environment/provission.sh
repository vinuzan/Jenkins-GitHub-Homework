#!/bin/bash

sudo apt update -y
sudo apt install openjdk-8-jdk -y
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y
sudo apt install jenkins -y
systemctl status jenkins
sudo ufw enable
sudo ufw allow 8080
 sudo ufw status
# sudo cat /var/lib/jenkins/secrets/initialAdminPassword
