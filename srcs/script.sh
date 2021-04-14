# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aapollo <aapollo@student.21-school.ru>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/23 02:28:24 by aapollo           #+#    #+#              #
#    Updated: 2021/03/08 22:21:43 by aapollo          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash
service mysql start
service php7.3-fpm start
# create sql database
mysql -e "CREATE DATABASE aapollo_db;"
mysql -e "CREATE USER 'aapollo'@'localhost' IDENTIFIED BY 'aapollo';"
mysql -e "GRANT ALL PRIVILEGES ON aapollo_db.* TO 'aapollo'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"

# SSL
mkdir /etc/nginx/ssl
openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/localhost.crt -keyout /etc/nginx/ssl/localhost.key -subj "/C=RU/ST=Moscow/L=Balashiha/O=42 School/OU=aapollo/CN=Super_project"
service nginx start

while true; do sleep 10000; done