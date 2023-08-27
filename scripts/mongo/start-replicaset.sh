#!/bin/bash

docker-compose -f docker-compose-infra.yml down
docker-compose -f docker-compose-infra.yml up -d 

sleep 30

docker exec nestjs-microservice-primary ./scripts/mongo/rs-init.sh
