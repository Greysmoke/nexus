#!/bin/bash

#create directory for data
mkdir ./nexus-data

#create volume
docker volume create nexus-data

#set permissions for volume
chmod 777 nexus-data

#start
docker compose up -d

#wait 30s for show admin password
sleep 30;

cat nexus-data/admin.password
