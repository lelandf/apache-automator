#!/bin/bash

domain=$1
root="/var/www/$domain/html"
block="/etc/apache2/sites-available/$domain.conf"

# Create the Document Root directory
sudo mkdir -p $root

# Assign ownership to your regular user account
sudo chown -R $USER:$USER $root

# Create the Apache virtual host file:
sudo tee $block > /dev/null <<EOF 
<VirtualHost *:80>
    ServerAdmin admin@example.com
    ServerName $domain
    ServerAlias www.$domain
    DocumentRoot /var/www/$domain/html
    ErrorLog \${APACHE_LOG_DIR}/error.log
    CustomLog \${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
EOF

# Enable new virtual host file
sudo a2ensite $domain.conf

# Reload and restart Apache
sudo service apache2 reload && sudo service apache2 restart