#!/bin/bash

cd ../tradespider 
git pull origin docker
echo "update tradespider"
cd ../glassesbag
git pull central pg
npm i
echo "update glassesbag"

echo "start tradespider"
cd ../tradespider-docer
docker-compose stop && \
echo y | docker-compose rm && \
docker-compose up -d && \
echo "success"
