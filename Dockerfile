FROM xujif/php5.6-cli
MAINTAINER xujif <i@xujif.com>
RUN yum install  -y  python-setuptools
RUN easy_install supervisor
ADD laravel-schedule /usr/bin/
RUN chmod a+x /usr/bin/laravel-schedule
VOLUME ["/data"]
WORKDIR /data/www

ENTRYPOINT ["supervisord","-n"]
