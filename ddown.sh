#!/bin/bash

  ## Normal Use:
    # In the terminal enter:
    # bash ddown.sh <service> <service> <service>... etc
    # 
    # Example to stop traefik container/docker-compose script:
    # bash ddown.sh traefik 
    
  ## Optional Use:
    # Uncomment lines below and shut down specific batches of containers with:
    # bash ddown.sh

CONTAINERS="$@"
for c in $CONTAINERS
do
  echo""
  echo "...$c down..."
  echo""
  docker-compose -f "/home/$USER/docker/ymlfiles/$c.yml" -p $c down
  done

#    docker-compose -f ~/docker/ymlfiles/pihole.yml -p pihole down
#    docker-compose -f ~/docker/ymlfiles/openvpn.yml -p openvpn down
#    docker-compose -f ~/docker/ymlfiles/traefik.yml -p traefik down
#    docker-compose -f ~/docker/ymlfiles/fail2ban.yml -p fail2ban down
#    docker-compose -f ~/docker/ymlfiles/ouroboros.yml -p ouroboros down
#    docker-compose -f ~/docker/ymlfiles/healthchecks.yml -p healthchecks down

#    docker-compose -f ~/docker/ymlfiles/mariadb.yml -p mariadb down
#    docker-compose -f ~/docker/ymlfiles/mongo.yml -p mongo down
#    docker-compose -f ~/docker/ymlfiles/postgres.yml -p postgres down
#    docker-compose -f ~/docker/ymlfiles/redis.yml -p redis down

#    docker-compose -f ~/docker/ymlfiles/airsonic.yml -p airsonic down
#    docker-compose -f ~/docker/ymlfiles/beets.yml -p beets down
#    docker-compose -f ~/docker/ymlfiles/bitwarden.yml -p bitwarden down
#    docker-compose -f ~/docker/ymlfiles/diskover.yml -p diskover down
#    docker-compose -f ~/docker/ymlfiles/emby.yml -p emby down
#    docker-compose -f ~/docker/ymlfiles/firefly.yml -p firefly down
#    docker-compose -f ~/docker/ymlfiles/glances.yml -p glances down
#    docker-compose -f ~/docker/ymlfiles/heimdall.yml -p heimdall down
#    docker-compose -f ~/docker/ymlfiles/jdownloader.yml -p jdownloader down
#    docker-compose -f ~/docker/ymlfiles/letsencrypt.yml -p letsencrypt down
#    docker-compose -f ~/docker/ymlfiles/nextcloud.yml -p nextcloud down
#    docker-compose -f ~/docker/ymlfiles/plex.yml -p plex down
#    docker-compose -f ~/docker/ymlfiles/portainer.yml -p portainer down
#    docker-compose -f ~/docker/ymlfiles/qbittorrent.yml -p qbittorrent down
#    docker-compose -f ~/docker/ymlfiles/soulseek.yml -p soulseek down
#    docker-compose -f ~/docker/ymlfiles/unifi.yml -p unifi down
#    docker-compose -f ~/docker/ymlfiles/wallabag.yml -p wallabag down
#    docker-compose -f ~/docker/ymlfiles/wetty.yml -p wetty down
#    docker-compose -f ~/docker/ymlfiles/wekan.yml -p wekan down

#    echo""
#    echo "...Others Down..."
#    echo""

#    docker-compose -f ~/docker/ymlfiles/test.yml -p test down
#    docker-compose -f ~/docker/ymlfiles/test2.yml -p test2 down
#    docker-compose -f ~/docker/ymlfiles/test3.yml -p test3 down

#    docker-compose -f ~/docker/ymlfiles/adminer.yml -p adminer down
#    docker-compose -f ~/docker/ymlfiles/ampache.yml -p ampache down
#    docker-compose -f ~/docker/ymlfiles/archivebox.yml -p archivebox down
#    docker-compose -f ~/docker/ymlfiles/autoheal.yml -p autoheal down
#    docker-compose -f ~/docker/ymlfiles/autoindex.yml -p autoindex down
#    docker-compose -f ~/docker/ymlfiles/baikal.yml -p baikal down
#    docker-compose -f ~/docker/ymlfiles/bookstack.yml -p bookstack down
#    docker-compose -f ~/docker/ymlfiles/certbot.yml -p certbot down
#    docker-compose -f ~/docker/ymlfiles/checkmk.yml -p checkmk down
#    docker-compose -f ~/docker/ymlfiles/chevereto.yml -p chevereto down
#    docker-compose -f ~/docker/ymlfiles/cloudcmd.yml -p cloudcmd down
#    docker-compose -f ~/docker/ymlfiles/code.yml -p code down
#    docker-compose -f ~/docker/ymlfiles/dehydrated.yml -p dehydrated down
#    docker-compose -f ~/docker/ymlfiles/dillinger.yml -p dillinger down
#    docker-compose -f ~/docker/ymlfiles/dokuwiki.yml -p dokuwiki down
#    docker-compose -f ~/docker/ymlfiles/dolphin.yml -p dolphin down
#    docker-compose -f ~/docker/ymlfiles/duplicati.yml -p duplicati down
#    docker-compose -f ~/docker/ymlfiles/filerun.yml -p filerun down
#    docker-compose -f ~/docker/ymlfiles/freshrss.yml -p freshrss down
#    docker-compose -f ~/docker/ymlfiles/gitea.yml -p gitea down
#    docker-compose -f ~/docker/ymlfiles/grafana.yml -p grafana down
#    docker-compose -f ~/docker/ymlfiles/guacamole.yml -p guacamole down
#    docker-compose -f ~/docker/ymlfiles/homedash.yml -p homedash down
#    docker-compose -f ~/docker/ymlfiles/jellyfin.yml -p jellyfin down
#    docker-compose -f ~/docker/ymlfiles/kanboard.yml -p kanboard down
#    docker-compose -f ~/docker/ymlfiles/kibitzr.yml -p kibitzr down
#    docker-compose -f ~/docker/ymlfiles/krusader.yml -p krusader down
#    docker-compose -f ~/docker/ymlfiles/laverna.yml -p laverna down
#    docker-compose -f ~/docker/ymlfiles/leanote.yml -p leanote down
#    docker-compose -f ~/docker/ymlfiles/logarr.yml -p logarr down
#    docker-compose -f ~/docker/ymlfiles/lychee.yml -p lychee down
#    docker-compose -f ~/docker/ymlfiles/mailu.yml -p mailu down
#    docker-compose -f ~/docker/ymlfiles/matomo.yml -p matomo down
#    docker-compose -f ~/docker/ymlfiles/mariadb2.yml -p mariadb2 down
#    docker-compose -f ~/docker/ymlfiles/mediamanagerstack.yml -p mediamanagerstack down
#    docker-compose -f ~/docker/ymlfiles/mediawiki.yml -p mediawiki down
#    docker-compose -f ~/docker/ymlfiles/miniflux.yml -p miniflux down
#    docker-compose -f ~/docker/ymlfiles/monica.yml -p monica down
#    docker-compose -f ~/docker/ymlfiles/monitorr.yml -p monitorr down
#    docker-compose -f ~/docker/ymlfiles/muximux.yml -p muximux down
#    docker-compose -f ~/docker/ymlfiles/netdata.yml -p netdata down
#    docker-compose -f ~/docker/ymlfiles/organizr.yml -p organizr down
#    docker-compose -f ~/docker/ymlfiles/photoprism.yml -p photoprism down
#    docker-compose -f ~/docker/ymlfiles/photoshow.yml -p photoshow down
#    docker-compose -f ~/docker/ymlfiles/picard.yml -p picard down
#    docker-compose -f ~/docker/ymlfiles/pivpn.yml -p pivpn down
#    docker-compose -f ~/docker/ymlfiles/piwigo.yml -p piwigo down
#    docker-compose -f ~/docker/ymlfiles/privatebin.yml -p privatebin down
#    docker-compose -f ~/docker/ymlfiles/prometheus.yml -p prometheus down
#    docker-compose -f ~/docker/ymlfiles/radicale.yml -p radicale down
#    docker-compose -f ~/docker/ymlfiles/resilio.yml -p resilio down
#    docker-compose -f ~/docker/ymlfiles/restic.yml -p restic down
#    docker-compose -f ~/docker/ymlfiles/samba.yml -p samba down
#    docker-compose -f ~/docker/ymlfiles/seagull.yml -p seagull down
#    docker-compose -f ~/docker/ymlfiles/sftp.yml -p sftp down
#    docker-compose -f ~/docker/ymlfiles/smokeping.yml -p smokeping down
#    docker-compose -f ~/docker/ymlfiles/smtp.yml -p smtp down
#    docker-compose -f ~/docker/ymlfiles/standardnotes.yml -p standardnotes down
#    docker-compose -f ~/docker/ymlfiles/syncthing.yml -p syncthing down
#    docker-compose -f ~/docker/ymlfiles/taiga.yml -p taiga down
#    docker-compose -f ~/docker/ymlfiles/taskwarrior.yml -p taskwarrior down
#    docker-compose -f ~/docker/ymlfiles/tinyrss.yml -p tinyrss down
#    docker-compose -f ~/docker/ymlfiles/transmission.yml -p transmission down
#    docker-compose -f ~/docker/ymlfiles/turtl.yml -p turtl down
#    docker-compose -f ~/docker/ymlfiles/twweb.yml -p twweb down
#    docker-compose -f ~/docker/ymlfiles/volumio.yml -p volumio down
#    docker-compose -f ~/docker/ymlfiles/watchtower.yml -p watchtower down
