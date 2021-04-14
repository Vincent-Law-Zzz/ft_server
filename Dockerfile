# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aapollo <aapollo@student.21-school.ru>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/23 01:50:29 by aapollo           #+#    #+#              #
#    Updated: 2021/03/10 18:07:24 by aapollo          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster 

RUN		apt-get update
RUN		apt-get -y install nginx vim
RUN		apt-get -y install mariadb-server-10.3
RUN 	apt-get -y install php7.3 php7.3-fpm php7.3-mysql
RUN 	apt-get -y install wordpress
RUN 	apt-get -y install openssl
RUN 	mkdir -p /var/www/html && mv /usr/share/wordpress /var/www/html
ADD 	https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz /

RUN 	tar -xvf /phpMyAdmin-5.0.4-all-languages.tar.gz -C /var/www/html && \
rm -rf phpMyAdmin-5.0.4-all-languages.tar.gz


COPY	./srcs/wp-config.php ./var/www/html/wordpress
COPY	./srcs/nginx_conf ./etc/nginx/sites-available/default
COPY	./srcs/config.inc.php ./var/www/html/phpMyAdmin-5.0.4-all-languages
COPY	./srcs/script.sh ./

CMD 	bash script.sh


EXPOSE 80 443