#!/bin/bash

# Actualizar el sistema
apt update
apt upgrade -y

# Instalar Apache
apt install apache2 -y

# Verificar el estado de Apache
systemctl status apache2

# Instalar MariaDB
apt install mariadb-server -y

# Acceder a MariaDB como root
mariadb -u root

# Crear la base de datos y la tabla
CREATE DATABASE lamp_db CHARSET utf8mb4;
USE lamp_db;
CREATE TABLE users (
id int(11) NOT NULL auto_increment,
name varchar(100) NOT NULL,
age int(3) NOT NULL,
email varchar(100) NOT NULL,
PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Crear un usuario y conceder privilegios
CREATE USER 'larry'@'localhost' IDENTIFIED BY 'larry';
GRANT ALL PRIVILEGES ON lamp_db.* TO 'larry'@'localhost';
FLUSH PRIVILEGES;
EXIT;

# Instalar PHP
apt install php libapache2-mod-php php-mysql -y

# Instalar phpMyAdmin
apt install phpmyadmin -y

# Configurar phpMyAdmin para Apache
echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf

# Reiniciar Apache
systemctl restart apache2

echo "Instalación completada. Asegúrate de configurar correctamente phpMyAdmin accediendo a http://tudominio/phpmyadmin desde tu navegador."

