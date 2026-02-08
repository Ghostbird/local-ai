#!/bin/sh
# Install some prerequisites:
# - docker-ce-rootless-extras
# - docker-compose-plugin
# - nvidia-container-tookit

sudo apt-get install docker-ce-rootless-extras docker-compose-plugin nvidia-container-toolkit yq nvtop
# Ensure you can access the data even when created by the container user.
mkdir -p ollama open-webui storage storage-models storage-user
chown $(id -u):$(id -g) ollama open-webui storage storage-models storage-user
chmod g+s ollama open-webui storage storage-models storage-user
echo
echo "To start:"
echo "docker compose up -d"
echo
