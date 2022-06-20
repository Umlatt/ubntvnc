#!/bin/bash
echo "Stop running containers"
docker stop $(docker ps -aq)
echo "Remove containers"
docker rm $(docker ps -aq)
