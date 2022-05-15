# ssh-bastion

This repo contains example nginx configs and docker files to create a simple ssh-based bastion server.  

The home server (which we want to have secure access to from the interwebs) connects to the bastion via ssh and uses ssh port tunneling to expose the home services (running in docker) to the bastion.  An nginx container runs on both servers, the bastion nginx handles ssl certificates (via letsencrypt) and acts as a reverse proxy, forwarding requests it recieves down through the ssh tunnel to the nginx running on the home server.  This nginx container is essentially another reverse proxy, it behaves like a router and passes requests it receives from the ssh tunnel on to the appropriate container.

Note that all of this hasn't been touched in ~5 years.  I no longer run the services I used to on that server and no longer need remote access (thanks covid), so use at your own risk.

ssh-server was forked from https://github.com/chamunks/alpine-openssh with a few modifications

Internal port numbers have been randomized, make sure to change them!
