#!/bin/bash

cd frontend/
npm install

cd ../backend/
npm install

cd ..

# remove old containers & images (volume should persist)
docker compose down
docker stop $(docker ps -aq)
docker rm -f $(docker ps -aq)
docker image prune -a -f

docker compose up -d
