 #!/bin/bash

 #######################################
 # Bash script to install NODE-RED and PM2 stack in ubuntu
 # Author: mjh

## system update & upgrade
apt-get update -y
apt-get upgrade -y

## Install NPM
apt-get install npm -y

## Install Node-Red
npm install -g --unsafe-perm node-red

## Install PM2
npm install -g pm2 -y

# Tell PM2 to run Node-RED
pm2 start /usr/local/bin/node-red -- -v

# Tell PM2 to run on boot
pm2 save
pm2 startup

