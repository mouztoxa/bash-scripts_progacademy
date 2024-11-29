#!/bin/bash

apt update
apt install -y apache2

yum update -y
yum install -y httpd

systemctl start apache2 2>/dev/null || systemctl start httpd
systemctl enable apache2 2>/dev/null || systemctl enable httpd

systemctl status apache2 2>/dev/null || systemctl status htpd
