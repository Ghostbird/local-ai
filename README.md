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

# Ollama

This branch runs only Ollama. Run `docker exec -t ollama ollama run gemma3:1b` to start a very simple model and chat with it.

Run `nvtop` to monitor your GPU and evaluate whether the model is properly running on the GPU.

Run `docker exec -t ollama ollama ps` to see how which models are running, how much memory they use, and how this is distributed across CPU and GPU.
