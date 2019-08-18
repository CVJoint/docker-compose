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

  ## Optional Use:
    # Uncomment lines below and bring up specific batches of containers with:
    # bash dup.sh

CONTAINERS="$@"
for c in $CONTAINERS
do
  echo""
  echo "...$c up..."
  echo""
  docker-compose -f "/home/$USER/docker/ymlfiles/$c.yml" -p $c up -d
  done

#    docker-compose -f ~/docker/ymlfiles/pihole.yml -p pihole up -d
#    docker-compose -f ~/docker/ymlfiles/openvpn.yml -p openvpn up -d
#    docker-compose -f ~/docker/ymlfiles/traefik.yml -p traefik up -d
#    docker-compose -f ~/docker/ymlfiles/fail2ban.yml -p fail2ban up -d
#    docker-compose -f ~/docker/ymlfiles/ouroboros.yml -p ouroboros up -d
#    docker-compose -f ~/docker/ymlfiles/healthchecks.yml -p healthchecks up -d

#    docker-compose -f ~/docker/ymlfiles/mariadb.yml -p mariadb up -d
#    docker-compose -f ~/docker/ymlfiles/mongo.yml -p mongo up -d
#    docker-compose -f ~/docker/ymlfiles/postgres.yml -p postgres up -d
#    docker-compose -f ~/docker/ymlfiles/redis.yml -p redis up -d

#    docker-compose -f ~/docker/ymlfiles/airsonic.yml -p airsonic up -d            # MariaDB
#    docker-compose -f ~/docker/ymlfiles/beets.yml -p beets up -d
#    docker-compose -f ~/docker/ymlfiles/bitwarden.yml -p bitwarden up -d
#    docker-compose -f ~/docker/ymlfiles/diskover.yml -p diskover up -d
#    docker-compose -f ~/docker/ymlfiles/emby.yml -p emby up -d
#    docker-compose -f ~/docker/ymlfiles/firefly.yml -p firefly up -d              # MariaDB
#    docker-compose -f ~/docker/ymlfiles/glances.yml -p glances up -d
#    docker-compose -f ~/docker/ymlfiles/heimdall.yml -p heimdall up -d
#    docker-compose -f ~/docker/ymlfiles/jdownloader.yml -p jdownloader up -d
#    docker-compose -f ~/docker/ymlfiles/letsencrypt.yml -p letsencrypt up -d
#    docker-compose -f ~/docker/ymlfiles/nextcloud.yml -p nextcloud up -d          # MariaDB
#    docker-compose -f ~/docker/ymlfiles/plex.yml -p plex up -d
#    docker-compose -f ~/docker/ymlfiles/portainer.yml -p portainer up -d
#    docker-compose -f ~/docker/ymlfiles/qbittorrent.yml -p qbittorrent up -d
#    docker-compose -f ~/docker/ymlfiles/soulseek.yml -p soulseek up -d
#    docker-compose -f ~/docker/ymlfiles/unifi.yml -p unifi up -d
#    docker-compose -f ~/docker/ymlfiles/wallabag.yml -p wallabag up -d
#    docker-compose -f ~/docker/ymlfiles/wetty.yml -p wetty up -d
#    docker-compose -f ~/docker/ymlfiles/wekan.yml -p wekan up -d                  # Mongo

#    echo""
#    echo "...Others Up..."
#    echo""

#    docker-compose -f ~/docker/ymlfiles/test.yml -p test up -d
#    docker-compose -f ~/docker/ymlfiles/test2.yml -p test2 up -d
#    docker-compose -f ~/docker/ymlfiles/test3.yml -p test3 up -d

#    docker-compose -f ~/docker/ymlfiles/adminer.yml -p adminer up -d
#    docker-compose -f ~/docker/ymlfiles/ampache.yml -p ampache up -d
#    docker-compose -f ~/docker/ymlfiles/archivebox.yml -p archivebox up -d
#    docker-compose -f ~/docker/ymlfiles/autoheal.yml -p autoheal up -d
#    docker-compose -f ~/docker/ymlfiles/autoindex.yml -p autoindex up -d
#    docker-compose -f ~/docker/ymlfiles/baikal.yml -p baikal up -d
#    docker-compose -f ~/docker/ymlfiles/bookstack.yml -p bookstack up -d
#    docker-compose -f ~/docker/ymlfiles/certbot.yml -p certbot up -d
#    docker-compose -f ~/docker/ymlfiles/checkmk.yml -p checkmk up -d
#    docker-compose -f ~/docker/ymlfiles/chevereto.yml -p chevereto up -d
#    docker-compose -f ~/docker/ymlfiles/cloudcmd.yml -p cloudcmd up -d
#    docker-compose -f ~/docker/ymlfiles/code.yml -p code up -d
#    docker-compose -f ~/docker/ymlfiles/dehydrated.yml -p dehydrated up -d
#    docker-compose -f ~/docker/ymlfiles/dillinger.yml -p dillinger up -d
#    docker-compose -f ~/docker/ymlfiles/dokuwiki.yml -p dokuwiki up -d
#    docker-compose -f ~/docker/ymlfiles/dolphin.yml -p dolphin up -d
#    docker-compose -f ~/docker/ymlfiles/duplicati.yml -p duplicati up -d
#    docker-compose -f ~/docker/ymlfiles/filerun.yml -p filerun up -d
#    docker-compose -f ~/docker/ymlfiles/freshrss.yml -p freshrss up -d
#    docker-compose -f ~/docker/ymlfiles/gitea.yml -p gitea up -d
#    docker-compose -f ~/docker/ymlfiles/grafana.yml -p grafana up -d
#    docker-compose -f ~/docker/ymlfiles/guacamole.yml -p guacamole up -d
#    docker-compose -f ~/docker/ymlfiles/homedash.yml -p homedash up -d
#    docker-compose -f ~/docker/ymlfiles/jellyfin.yml -p jellyfin up -d
#    docker-compose -f ~/docker/ymlfiles/kanboard.yml -p kanboard up -d
#    docker-compose -f ~/docker/ymlfiles/kibitzr.yml -p kibitzr up -d
#    docker-compose -f ~/docker/ymlfiles/krusader.yml -p krusader up -d
#    docker-compose -f ~/docker/ymlfiles/laverna.yml -p laverna up -d
#    docker-compose -f ~/docker/ymlfiles/leanote.yml -p leanote up -d
#    docker-compose -f ~/docker/ymlfiles/logarr.yml -p logarr up -d
#    docker-compose -f ~/docker/ymlfiles/lychee.yml -p lychee up -d
#    docker-compose -f ~/docker/ymlfiles/mailu.yml -p mailu up -d
#    docker-compose -f ~/docker/ymlfiles/matomo.yml -p matomo up -d
#    docker-compose -f ~/docker/ymlfiles/mariadb2.yml -p mariadb2 up -d
#    docker-compose -f ~/docker/ymlfiles/mediamanagerstack.yml -p mediamanagerstack up -d
#    docker-compose -f ~/docker/ymlfiles/mediawiki.yml -p mediawiki up -d
#    docker-compose -f ~/docker/ymlfiles/miniflux.yml -p miniflux up -d
#    docker-compose -f ~/docker/ymlfiles/monica.yml -p monica up -d
#    docker-compose -f ~/docker/ymlfiles/monitorr.yml -p monitorr up -d
#    docker-compose -f ~/docker/ymlfiles/muximux.yml -p muximux up -d
#    docker-compose -f ~/docker/ymlfiles/netdata.yml -p netdata up -d
#    docker-compose -f ~/docker/ymlfiles/organizr.yml -p organizr up -d
#    docker-compose -f ~/docker/ymlfiles/photoprism.yml -p photoprism up -d
#    docker-compose -f ~/docker/ymlfiles/photoshow.yml -p photoshow up -d
#    docker-compose -f ~/docker/ymlfiles/picard.yml -p picard up -d
#    docker-compose -f ~/docker/ymlfiles/pivpn.yml -p pivpn up -d
#    docker-compose -f ~/docker/ymlfiles/piwigo.yml -p piwigo up -d
#    docker-compose -f ~/docker/ymlfiles/privatebin.yml -p privatebin up -d
#    docker-compose -f ~/docker/ymlfiles/prometheus.yml -p prometheus up -d
#    docker-compose -f ~/docker/ymlfiles/radicale.yml -p radicale up -d
#    docker-compose -f ~/docker/ymlfiles/resilio.yml -p resilio up -d
#    docker-compose -f ~/docker/ymlfiles/restic.yml -p restic up -d
#    docker-compose -f ~/docker/ymlfiles/samba.yml -p samba up -d
#    docker-compose -f ~/docker/ymlfiles/seagull.yml -p seagull up -d
#    docker-compose -f ~/docker/ymlfiles/sftp.yml -p sftp up -d
#    docker-compose -f ~/docker/ymlfiles/smokeping.yml -p smokeping up -d
#    docker-compose -f ~/docker/ymlfiles/smtp.yml -p smtp up -d
#    docker-compose -f ~/docker/ymlfiles/standardnotes.yml -p standardnotes up -d
#    docker-compose -f ~/docker/ymlfiles/syncthing.yml -p syncthing up -d
#    docker-compose -f ~/docker/ymlfiles/taiga.yml -p taiga up -d
#    docker-compose -f ~/docker/ymlfiles/taskwarrior.yml -p taskwarrior up -d
#    docker-compose -f ~/docker/ymlfiles/tinyrss.yml -p tinyrss up -d
#    docker-compose -f ~/docker/ymlfiles/transmission.yml -p transmission up -d
#    docker-compose -f ~/docker/ymlfiles/turtl.yml -p turtl up -d
#    docker-compose -f ~/docker/ymlfiles/twweb.yml -p twweb up -d
#    docker-compose -f ~/docker/ymlfiles/volumio.yml -p volumio up -d
#    docker-compose -f ~/docker/ymlfiles/watchtower.yml -p watchtower up -d
