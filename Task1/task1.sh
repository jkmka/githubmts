#!/bin/bash
HAPROXY1=("localhost:10000")
HAPROXY2=("localhost:10001")
NGINX1=("docker_nginx1")
NGINX2=("docker_nginx2")

docker-compose up --build -d

checkhealth(){
HTTPCODE=$(curl -i $1 | head -n 1 | cut -d' ' -f2)
echo $HTTPCODE
if [ $HTTPCODE -eq 200 ]; then
    echo $2' Online'
else
    echo $2' Offline'
fi
}
checkhealth $HAPROXY1 $NGINX1
checkhealth $HAPROXY2 $NGINX2