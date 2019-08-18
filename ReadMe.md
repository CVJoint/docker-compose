# docker-compose

-------

My docker-compose setup is managed by two files - **dup.sh** and **ddown.sh**, which I store in my home (aka ${USERDIR}) folder.

I keep my docker-compose files in a folder called **/ymlfiles/**, and reference it's location in my **dup.sh** and **ddown.sh** files.

## Normal Use:

Place these files in your home directory, and in the terminal enter:

  `bash dup.sh <service>`
 
You can start multiple containers/docker-compose scripts at the same time; for example:

  `bash dup.sh traefik bitwarden plex`

Normally I will simply type `bash du + Tab` or `bash dd + Tab` and then the services I want to bring up or down. You could choose different file names, or enter aliases to make the command a bit simpler, but this has been working for me so far.

This method allows for easy control and flexibility over which containers are running, and saves me from having to comment out several lines within a single docker-compose.yml. I like to think that it 'containerizes your containers' and allows you to work on a single file, which has been much simpler to modify.

-------

# Automated Backups with Cron

-------

Here is my solution to automatically backup my files/directories. I use Debian/Raspbian/Armbian systems and this works for me based on how those distros handle the cron.d folder. If you're on a distro that doesn't support the cron.d folder you can look at using the _sudo crontab -e_ file. I prefer the cron.d method because it's easy to backup and transfer between systems.

I use rsync to backup my files:

`sudo apt install rsync`

Place the **rsync_backups** file in your **/etc/cron.d/** folder, and make sure the file is owned by root:

`sudo chown root:root /etc/cron.d/rsync_backups`

Edit the rsync_backups file and change the files/folders that you want to back up, and the directories that you want to back them up to. I've mounted a samba share to the storage folder on my NAS, and label the backup directories accordingly. You can choose any backup directory you'd like.

After editing the file, make sure it was picked up by cron and there were no errors with:

`sudo tail -f /var/log/syslog`

The cron daemon will scan once per minute for any changes to the /etc/cron.d folder. Within a minute or two you should see an output like:

`cron[6488]: (*system*rsync_backups) RELOAD (/etc/cron.d/rsync_backups)`

If there's an error you might see something like:

```
cron[6488]: (*system*rsync_backups) RELOAD (/etc/cron.d/rsync_backups)
cron[6488]: Error: bad minute; while reading /etc/cron.d/rsync_backups
cron[6488]: (*system*rsync_backups) ERROR (Syntax error, this crontab file will be ignored)
```

I got that output when I tried to turn the backup time into a variable and the backup would no longer run :-(

I hope you find this useful!

