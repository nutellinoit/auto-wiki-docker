#!/usr/bin/env bash

cd build_site_container
make build
cd ../deploy_site_container
docker stop deploysitecontainer_web_1
docker rm deploysitecontainer_web_1
docker-compose up -d --force-recreate