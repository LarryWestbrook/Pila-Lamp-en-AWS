# Script para la Implantacion de la Pila Lamp:
#!/bin/bash

# Install figlet
apt install figlet -y
figlet " Pila Lamp"

# Update and upgrade
apt update
apt upgrade -y

# Install Apache
apt install apache2 -y

# Install MariaDB
apt install mariadb-server -y

# Start MariaDB service
systemctl start mariadb

# Connect to MariaDB and execute SQL commands
mysql -u root -p <<myscript
CREATE DATABASE IF NOT EXISTS lamp_db CHARSET utf8mb4;
USE lamp_db;
CREATE TABLE IF NOT EXISTS users (
  id int(11) NOT NULL auto_increment,
  name varchar(100) NOT NULL,
  age int(3) NOT NULL,
  email varchar(100) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE USER IF NOT EXISTS 'larry';
ALTER USER 'larry' IDENTIFIED BY 'larry';
GRANT ALL PRIVILEGES ON lamp_db.* TO 'larry';
FLUSH PRIVILEGES;
myscript

# Install PHP
apt install php -y

# Install phpMyAdmin
apt install phpmyadmin -y

# Install Git
apt install git -y

# Clone your PHP project (assuming it's a valid git repository)
git clone https://github.com/LarryWestbrook/Pila-Lamp-en-AWS.git 

cp -r Pila-Lamp-en-AWS/src/* /var/www/html
#rm -r php-MariaDB-Apache2
