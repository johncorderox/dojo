#!/bin/bash
yum update -y
yim install httpd -y
service httpd start
chkconfig https on
cd /var/www/html
aws s3 cp s3://johncorderox-homepage/index.html.erb /var/www/html
