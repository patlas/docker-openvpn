#!/bin/bash 

cd "$(dirname "$0")"

IMAGE_NAME="patlas/openvpn:latest"
docker build -f Dockerfile${1} -t ${IMAGE_NAME} .
