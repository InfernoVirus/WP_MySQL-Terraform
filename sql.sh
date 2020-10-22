#! /bin/bash
#   code tested on ubuntu 18.04 
# Here are the database details {the values used are given below can be changes accordingly}
#       ==========================================
#       ||  database_user       :  wpuser       ||
#       ||  database_password   :  redhat       ||
#       ||  database_name       :  wordpress    ||
#       ==========================================
sudo apt-get install mysql-server -y
sudo systemctl start mysql
sudo systemctl restart mysql
sudo sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mysql.conf.d/mysqld.cnf
sudo systemctl start mysql
sudo mysql -u root -e "CREATE USER wpuser IDENTIFIED BY 'redhat';"
sudo mysql -u root -e "CREATE DATABASE wordpress;"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser';"
sudo iptables -A INPUT -p tcp --dport 3306 -j ACCEPT
sudo systemctl restart mysql