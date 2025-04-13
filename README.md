# Docker compose local AI

This repo has branches with different docker compose set-ups that I use to locally run AI and try things.

## Requirements

- NVIDIA Graphics card: I have set this up to leverage NVIDIA CUDA.
- Debian based OS: The supporting scripts are written for Debian.
- [Docker repo added to APT](https://docs.docker.com/engine/install/debian/#installation-methods)

## Getting started

0. Clone this repo
1. Check out the branch you want to use
2. Run `./set-up.sh`
3. Run `docker compose up -d`

# Open Web UI

This branch runs Ollama + Open Web UI in single-user mode. Run `docker exec -t ollama ollama load gemma3:1b` to load a very simple model.

Browse to http://localhost:8080 to view the Open Web UI, configure it, and converse with the model.
