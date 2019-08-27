#!/bin/bash

  ## Normal Use:
    # In the terminal enter:
    # bash ddown.sh <service> <service> <service>... etc
    # 
    # Example to stop traefik container/docker-compose script:
    # bash ddown.sh traefik 
    
CONTAINERS="$@"
for c in $CONTAINERS
do
  echo""
  echo "...$c down..."
  echo""
  docker-compose -f "/home/$USER/docker/ymlfiles/$c.yml" -p $c down
  done

