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

# SearxNG + Perplexica

This branch runs only Ollama + SearxNG + Perplexica. Run `docker exec -t ollama ollama run gemma3:1b` to load a very simple model.

Browse to http://localhost:3000 to open Perplexica, configure it, and use it as AI search engine.
