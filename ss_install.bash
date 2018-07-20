#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @file: ss_install.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-05-31 20:42:21
# @last_modified_date: 2018-07-20 23:35:13
# @brief: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
sudo apt update
sudo apt install -y python-pip git
pip install git+https://github.com/shadowsocks/shadowsocks.git@master
wget -N --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && bash bbr.sh
sysctl net.ipv4.tcp_available_congestion_control
sysctl net.ipv4.tcp_congestion_control
sysctl net.core.default_qdisc
cp shadowsocks.json /etc/
echo "PATH=`pwd`:\$PATH"
