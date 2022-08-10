#!/bin/bash

docker-compose up -d
sleep 3

echo -e "\e[0;33mCreate Mongo Replication Master-slave\e[0m"
docker exec mongo_master /scripts/rs-init.sh
docker ps
echo -e "\e[0;33mRun command:\e[0m"
sleep 1
echo -e "\e[0;33mdocker exec -it mongo_master mongo\e[0m"
