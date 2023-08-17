#!/bin/bash

cd fso-part_11_ex11.20
git pull

cd frontend/
npm install

cd ../backend/
npm install

cd ..

# remove old containers & images (volumes should persist)
docker compose down
docker stop $(docker ps -aq)
docker rm -f $(docker ps -aq)
docker image prune -a -f

docker compose up -d