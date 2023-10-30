#!/bin/bash

# Update package list
sudo apt update

# Install MySQL Server and Client
sudo apt install mysql-server mysql-client

# Check if socket variable exists in configuration files
if [[ -f /etc/mysql/mysql.conf.d/mysqld.cnf ]]; then
    if ! grep -q "socket" /etc/mysql/mysql.conf.d/mysqld.cnf; then
        # Add socket variable to mysqld.cnf
        sudo bash -c 'echo "socket = /var/run/mysqld/mysqld.sock" >> /etc/mysql/mysql.conf.d/mysqld.cnf'
    fi
elif [[ -f /etc/mysql/my.cnf ]]; then
    if ! grep -q "socket" /etc/mysql/my.cnf; then
        # Add socket variable to my.cnf
        sudo bash -c 'echo "socket = /var/run/mysqld/mysqld.sock" >> /etc/mysql/my.cnf'
    fi
else
    echo "MySQL configuration file not found."
fi

# Set permissions for mysqld directory
sudo chmod 755 /var/run/mysqld/

# Restart MySQL service
sudo service mysql restart

# Access MySQL
sudo mysql
