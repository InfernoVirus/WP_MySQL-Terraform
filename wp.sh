#! /bin/bash
#   code tested on Centos:7
#   
sudo yum install epel-release  yum-utils wget  -y
sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y 
sudo yum-config-manager --enable remi-php70
sudo yum install php php-mysql -y
sudo  wget http://wordpress.org/latest.tar.gz
sudo  tar -xzvf latest.tar.gz
sudo cp -rvf wordpress/* /var/www/html/
sudo chown -R apache:apache /var/www/html/*
sudo chown apache:apache /var/www/html
sudo systemctl start httpd