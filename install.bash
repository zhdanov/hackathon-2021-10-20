#!/bin/bash

DB_USER=gbc
DB_PASSWORD=qWe12_34

sudo apt -y install vim
sudo apt -y install net-tools
sudo apt -y install php7.4-cli php-pgsql php-mysqli php-zip
sudo apt -y install wget php-zip unzip

# postgres
sudo -u postgres -i psql -d bank -c "CREATE USER $DB_USER WITH PASSWORD '$DB_PASSWORD'"
sudo -u postgres -i psql -d bank -c "GRANT ALL PRIVILEGES ON DATABASE bank to $DB_USER"
sudo -u postgres -i psql -d bank -c "GRANT USAGE ON SCHEMA prod_apps TO $DB_USER"
sudo -u postgres -i psql -d bank -c "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA prod_apps TO $DB_USER"
sudo -u postgres -i psql -d bank -c "GRANT USAGE ON SCHEMA prod_loans TO $DB_USER"
sudo -u postgres -i psql -d bank -c "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA prod_loans TO $DB_USER"

# mysql
sudo -u root -i mysql -e "CREATE USER '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSWORD'"

sudo -u root -i mysql -e "GRANT ALL PRIVILEGES ON * . * TO '$DB_USER'@'localhost'"
sudo -u root -i mysql -e "FLUSH PRIVILEGES"

# composer
wget https://getcomposer.org/installer -O composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm composer-setup.php
composer install

# migrations
sudo -u root -i mysql -e "create database public"
sudo -u root -i mysql public -e "create table mp_version ( version text )"
sudo -u root -i mysql public -e "insert into mp_version values ('0')"

sudo ./vendor/bin/mp -x"mysql:dbname=public;user=$DB_USER;password=$DB_PASSWORD;host=localhost" -m
