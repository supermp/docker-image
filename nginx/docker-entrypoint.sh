#!/bin/bash

PHP_HOST=${PHP_HOST:-'php'}
WEB_ROOT=${WEB_ROOT:-''}

sed -i 's/\(\s\+fastcgi_pass\s\+\)php/\1'"$PHP_HOST"'/' /etc/nginx/conf.d/default.conf
sed -i 's/\(\s\+root\s\+\/var\/www\/html\/\)/\1'"$WEB_ROOT"'/' /etc/nginx/conf.d/default.conf

exec "$@"
