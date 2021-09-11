#!/bin/bash
# wp-cli basic install script with sqlite database.
# based on https://gist.github.com/erm3nda/8444f8536b309ae198cb


#setup default variables and params
d_locale='de_DE'
locale=${1:-$d_locale}

d_title='DEV'
title=${2:-$d_title}

d_admin_email='admin@test.de'
admin_email=${3:-$d_admin_email}

d_admin_name='admin'
admin_name=${4:-$d_admin_name}

d_admin_pass='pass'
admin_pass=${5:-$d_admin_pass}

d_port='8080'
port=${6:-$d_port}


#download last wp-cli build .phar file
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

# Download wp-package, by default does download en_US package (--locale="en_US")
php wp-cli.phar core download --locale="$locale"

# You can later install another language package
# php wp-cli.phar core language es_ES --activate

# This part of the config is a bit dummy, because it will be overrided by sqlite plugin
php wp-cli.phar core config --skip-check --dbname=wp --dbuser=wp --dbpass=pass

# Download sqlite integration plugin in -wp-content folder
curl -verbose -o $(pwd)/wp-content/db.php https://raw.githubusercontent.com/aaemnnosttv/wp-sqlite-db/master/src/db.php


# Install downloaded wordpress, set real data and set desired url:port
php wp-cli.phar core install --title="$title" --admin_name="$admin_name" --admin_email="$admin_email" --admin_password="$admin_email" --url="http://localhost:$port"

# Run the server. Would run using PHP -S builtin server
# Remember to edit the right php.ini located at same dir than php.exe and not the one with apache's files
php wp-cli.phar server
