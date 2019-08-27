#!/bin/bash

#### Make sure Traefik is running and the traefik_proxy network was created with:
  # docker network create traefik_proxy

  ## Check logs with:
    # docker logs -tf --tail="50" <container name>
  
  ## Normal Use:
    # In the terminal enter:
    # bash dup.sh <service> <service> <service>... etc
    # 
    # Example to start traefik container/docker-compose script:
    # bash dup.sh traefik bitwarden plex

CONTAINERS="$@"
for c in $CONTAINERS
do
  echo""
  echo "...$c up..."
  echo""
  docker-compose -f "/home/$USER/docker/ymlfiles/$c.yml" -p $c up -d
  done

