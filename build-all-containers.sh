#!/bin/sh

cd ../user-service && ./gradlew build -Pprod bootRepackage buildDocker &
cd ../message-service && ./gradlew build -Pprod bootRepackage buildDocker &
cd ../disaster-service && ./gradlew build -Pprod bootRepackage buildDocker &
cd ../edge-server && ./gradlew build -Pprod bootRepackage buildDocker &
wait
cd ../docker-compose

docker-compose create
