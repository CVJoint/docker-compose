# docker-compose

-------

My docker-compose setup is managed by two files - **dup.sh** and **ddown.sh**, which I keep stored in my home (aka ${USERDIR}) folder.

Using these files I comment or uncomment the containers that I want to bring up, and then launch them with
`bash dup.sh` from the home directory.

Normally I will simply type `bash du` + Tab or `bash dd` + Tab to bring them up and down. You could choose different file names, or enter aliases to make the command a bit simpler, but this has been working for me so far.

This method allows for easy control and flexibility over which containers are running, and saves me from having to comment out several lines within a single docker-compose.yml. I like to think that it 'containerizes your containers' and allows you to work on a single file, which has been much simpler to modify.


When creating my compose files I've tried to take notes along the way - hopefully you'll find them helpful.

-------

If you have a suggestion on how something could be improved, please drop me a line on reddit. Thanks!
