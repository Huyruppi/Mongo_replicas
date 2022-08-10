#!/bin/bash

docker-compose up -d
sleep 3

docker ps
echo -e "\e[0;33mRun command:\e[0m"
sleep 1
echo -e "\e[0;33mdocker exec -it mongo_slave mongo\e[0m"
#docker exec mongo_master /scripts/rs-init.sh
