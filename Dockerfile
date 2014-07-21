FROM danieldreier/puppet-apache
MAINTAINER Daniel Dreier <ddreier@thinkplango.com>

RUN mkdir -p /etc/confd/conf.d /etc/confd/templates && wget -O /usr/bin/confd https://github.com/kelseyhightower/confd/releases/download/v0.6.0-alpha1/confd-0.6.0-alpha1-linux-amd64 && chmod +x /usr/bin/confd

RUN mkdir -p /var/www/whilefork.com
ADD www /var/www/whilefork.com/www
RUN chown -R www-data:www-data /var/www/whilefork.com/www
ADD hieradata /etc/puppet/hieradata
RUN apt-get update && puppet apply --verbose /etc/puppet/manifests/site.pp
