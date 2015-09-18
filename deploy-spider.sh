#!/bin/bash

cd ../tradespider 
echo "$(pwd)in tradespider"
git pull origin docker
echo "update tradespider"
cd ../glassesbag
git pull central pg
cd CaptchaServer
npm i
echo "update glassesbag"

echo "start tradespider"
cd ../../tradespider-docker
docker-compose stop && \
echo y | docker-compose rm && \
docker-compose up -d && \
echo "success"
