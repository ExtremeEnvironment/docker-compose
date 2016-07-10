#!/bin/sh

cd ../disaster-service && git checkout origin/master && git fetch && git pull origin master &
cd ../user-service && git checkout origin/master && git fetch && git pull origin master &
cd ../edge-server && git checkout origin/master && git fetch && git pull origin master &
cd ../message-service && git checkout origin/master && git fetch && git pull origin master &
wait

echo "done!"
