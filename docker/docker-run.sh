#!/bin/bash
systemctl start docker
docker-compose up -d --build
bash postgres/config.sh