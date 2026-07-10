#!/usr/bin/bash

# Install some prerequisites:
# - docker-ce-rootless-extras
# - docker-compose-plugin
# - nvidia-container-tookit
sudo apt-get install docker-ce-rootless-extras docker-compose-plugin nvidia-container-toolkit yq nvtop nginx

# Ensure you can access the data even when created by the container user.
# Note: These commands run with sudo, so they can correct
# a situation that arises if you started docker compose earlier than this script.
sudo mkdir -p ollama open-webui storage storage-models storage-user vane searxng
# Recursion may fail through symlink though the documentation of chown states this should work by default.
sudo chown -R $(id -u):$(id -g) ollama open-webui storage storage-models storage-user vane searxng
sudo chmod -R u+rwX ollama open-webui storage storage-models storage-user vane searxng
sudo chmod -R g+s ollama open-webui storage storage-models storage-user vane searxng

# Set-up nginx reverse proxies:
for conf in nginx-conf/*
do
  sudo ln -s "$(pwd)/$conf" /etc/nginx/conf.d/ 2> /dev/null
  uri="$(basename "$conf" | sed s/.conf/.local/ )"
  if [[ -z "$(grep "$uri" /etc/hosts)" ]]
  then
    printf "$(sed -nE 's#^\s*proxy_pass\s+http://(.+):[0-9]+/?\s*;\s*$#\1\t#p' $conf)$uri\n" | sudo tee -a /etc/hosts > /dev/null
  fi
done
sudo systemctl reload nginx.service

echo
echo "To start:"
echo "docker compose up -d"
echo
