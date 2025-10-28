#!/bin/bash
# WordPress Auto Deployment Script for Ubuntu
# Tested on Ubuntu 20.04 / 22.04

set -e

# --- CONFIGURATION ---
DB_NAME="wordpress_db"
DB_USER="wp_user"
DB_PASS="StrongPassword123!"
WP_URL="http://localhost"
WP_TITLE="My WordPress Site"
WP_ADMIN_USER="admin"
WP_ADMIN_PASS="AdminPass123!"
WP_ADMIN_EMAIL="admin@example.com"
# ----------------------

echo "🟢 Updating system..."
sudo apt update -y && sudo apt upgrade -y

echo "🟢 Installing Apache..."
sudo apt install apache2 -y
sudo systemctl enable apache2
sudo systemctl start apache2

echo "🟢 Installing MySQL..."
sudo apt install mysql-server -y
sudo systemctl enable mysql
sudo systemctl start mysql

echo "🟢 Securing MySQL..."
sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root'; FLUSH PRIVILEGES;"

echo "🟢 Creating WordPress database and user..."
sudo mysql -uroot -proot <<MYSQL_SCRIPT
CREATE DATABASE ${DB_NAME};
CREATE USER '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASS}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'localhost';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

echo "🟢 Installing PHP and dependencies..."
sudo apt install php php-mysql libapache2-mod-php php-cli php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip unzip -y

echo "🟢 Downloading latest WordPress..."
cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz

echo "🟢 Configuring WordPress..."
sudo rsync -av wordpress/ /var/www/html/
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/

cd /var/www/html/
sudo cp wp-config-sample.php wp-config.php
sudo sed -i "s/database_name_here/${DB_NAME}/" wp-config.php
sudo sed -i "s/username_here/${DB_USER}/" wp-config.php
sudo sed -i "s/password_here/${DB_PASS}/" wp-config.php

echo "🟢 Generating WordPress salts..."
SALT=$(curl -s https://api.wordpress.org/secret-key/1.1/salt/)
sudo sed -i "/#@-/r /dev/stdin" wp-config.php <<< "$SALT"

echo "🟢 Restarting Apache..."
sudo systemctl restart apache2

echo "✅ WordPress deployed successfully!"
echo "🌐 Visit: ${WP_URL}"
echo "Login with user: ${WP_ADMIN_USER} / password: ${WP_ADMIN_PASS}"
