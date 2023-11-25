#!/bin/bash

echo
echo "Stopping all running Docker containers..."
docker stop $(docker ps -q)

echo
echo "Deleting all Docker images..."
docker rm $(docker ps -aq) -f
docker rmi $(docker images -q) -f

echo
echo "Deleting user-defined Docker networks..."
docker network rm $(docker network ls --filter type=custom -q)

echo
echo "Listing all Docker containers (including exited ones)..."
docker ps -a

echo
echo "Listing currently running Docker containers..."
docker container ls

echo
echo "Listing Docker images..."
docker images ls

echo
echo "Listing Docker networks..."
docker network ls

echo
echo "Operations completed."
