#!/bin/bash -e

pushd "${BASH_SOURCE%/*}/.."

echo "Building Docker image..."

IMAGE="sawano/ubuntu-openjdk8"
TAG="0.0.1"

docker build -t "${IMAGE}:${TAG}" -t "${IMAGE}":latest .
