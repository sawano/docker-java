#!/bin/bash -e

pushd "${BASH_SOURCE%/*}/.."

echo "Building Docker image..."

IMAGE="sawano/ubuntu-oraclejdk9"
TAG="local"

docker build -t "${IMAGE}:${TAG}" -t "${IMAGE}":latest .
