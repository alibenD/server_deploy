#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @name: v2ray_install.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-01-23 14:15:05
# @last_modified_date: 2018-07-20 23:59:32
# @description: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
apt-get install unzip
curl -L -s https://raw.githubusercontent.com/v2ray/v2ray-core/master/release/install-release.sh | bash
cp ./config.json /etc/v2ray/
./v2ray_start
