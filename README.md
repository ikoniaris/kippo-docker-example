# dockerized kippo


[kippo](https://github.com/desaster/kippo) is a medium interaction SSH honeypot. 

This repository contains the necessary files to create a *dockerized* version of kippo. 

This dockerized version is part of the **[T-Pot community honeypot](http://dtag-dev-sec.github.io/)** of Deutsche Telekom AG. 

The `Dockerfile` contains the blueprint for the dockerized kippo and will be used to setup the docker image.  

The `kippo.cfg` is tailored to fit the T-Pot environment. All important data is stored in `/data/kippo/`.

The `setup.sql` is also tailored to fit the T-Pot environment. 

The `supervisord.conf` is used to start kippo under supervision of supervisord. 

Using upstart, copy the file `upstart/kippo.conf` to `/etc/init/kippo.conf` and start kippo using

    service kippo start

This will make sure that the docker container is started with the appropriate rights and port mappings. Further, it autostarts during boot.
