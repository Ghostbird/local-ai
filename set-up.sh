#!/bin/sh
# Install some prerequisites:
# - docker-ce-rootless-extras
# - docker-compose-plugin
# - nvidia-container-tookit

sudo apt-get install docker-ce-rootless-extras docker-compose-plugin nvidia-container-toolkit yq nvtop
echo
echo "To start:"
echo "docker compose up -d"
echo
echo "On first use it is recommended to download at least one model:"
echo "docker exec -t ollama ollama pull <MODEL_NAME>"
