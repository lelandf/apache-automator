apache-automator
===============

Script has been adapted from the following Digital Ocean community question answer by Justin Ellingwood: [Semi-automating Nginx server block set up on Ubuntu with a script?](https://www.digitalocean.com/community/questions/semi-automating-nginx-server-block-set-up-on-ubuntu-with-a-script)

## What apache-vhost.sh does

Automates an otherwise tedious Apache virtual host set up.

- Creates web root
- Creates virtual host file
- Enables virtual host block
- Restarts Apache

## Usage

Make sure to make script executable by running the following command (may require sudo).

`chmod +x ./apache-vhost.sh`

Do this once, then run the following command each time you want to create a virtual host.

`./apache-vhost.sh example.com`

## Assumptions

- Your Apache virtual hosts are going to be set up in the /var/www/ directories.
