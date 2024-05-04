#!/usr/bin/env bash

set -e

VERSION='12'
IMAGE_REPO="ansible0guy/molecule"
IMAGE="${IMAGE_REPO}:debian-${VERSION}"
IMAGE_LATEST="${IMAGE_REPO}:debian-latest"

cd "$(dirname "$0")/../docker"

docker build -f Dockerfile_molecule -t "$IMAGE" --no-cache .
docker push "$IMAGE"
docker image rm "$IMAGE" || true

echo ''
read -r -p "Build version ${VERSION} as latest? [y/N] " -n 1

if [[ "$REPLY" =~ ^[Yy]$ ]]
then
  docker build -f Dockerfile_molecule -t "$IMAGE_LATEST" .
  docker push "$IMAGE_LATEST"
  docker image rm "$IMAGE_LATEST" || true
fi
