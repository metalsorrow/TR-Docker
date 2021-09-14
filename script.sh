#!/bin/bash

#Crea Directorios Operacion
if [ ! -d "./oradata" ] 
then
    echo "Crea oradata"
    mkdir -p oradata
fi

if [ ! -d "./datafile" ] 
then
    mkdir -p datafile
fi

echo "Bajar ambiente"
docker-compose down

docker pull epiclabs/docker-oracle-xe-11g
docker pull node:14-alpine

echo "Levantar ambiente"
docker-compose up -d
