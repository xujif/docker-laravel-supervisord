FROM xujif/php5.6-cli
MAINTAINER xujif <i@xujif.com>
RUN yum install  -y  python-setuptools
RUN easy_install supervisor
VOLUME ["/data"]
WORKDIR /data/www

ENTRYPOINT ["supervisord","-n"]
