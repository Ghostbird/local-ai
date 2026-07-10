# Docker compose local AI

This repo contains a docker compose + nginx reverse proxy set-up that I use to locally run AI.

## Requirements

- NVIDIA Graphics card: I have set this up to leverage NVIDIA CUDA.
- Debian based OS: The supporting scripts are written for Debian.
- [Docker repo added to APT](https://docs.docker.com/engine/install/debian/#installation-methods)

## Getting started

0. Clone this repo
1. Check out the branch you want to use
2. Run `./set-up.sh`
3. Run `docker compose up -d`

# Results

- Ollama running on http://ollama.local
- Open WebUI running on http://open-webui.local
- ComfyUI running on http://comfyui.local
- Vane running on http://vane.local
- SearxNG running on http://searxng.local
