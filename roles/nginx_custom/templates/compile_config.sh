#!/usr/bin/bash

cd /opt/nginx-1.14.0
./configure --prefix=/usr/share/nginx \
            --sbin-path=/usr/sbin/nginx \
            --modules-path=/usr/lib/nginx/modules \
            --conf-path=/etc/nginx/nginx.conf \
            --error-log-path=/var/log/nginx/error.log \
            --http-log-path=/var/log/nginx/access.log \
            --pid-path=/run/nginx.pid \
            --lock-path=/var/lock/nginx.lock \
            --user=www-data \
            --group=www-data \
            --build=CentOS \
            --http-client-body-temp-path=/var/lib/nginx/body \
            --http-fastcgi-temp-path=/var/lib/nginx/fastcgi \
            --http-proxy-temp-path=/var/lib/nginx/proxy \
            --http-scgi-temp-path=/var/lib/nginx/scgi \
            --http-uwsgi-temp-path=/var/lib/nginx/uwsgi \
            --with-openssl=../openssl-1.1.0h \
            --with-openssl-opt=enable-ec_nistp_64_gcc_128 \
            --with-openssl-opt=no-nextprotoneg \
            --with-openssl-opt=no-weak-ssl-ciphers \
            --with-openssl-opt=no-ssl3 \
            --with-pcre=../pcre-8.42 \
            --with-pcre-jit \
            --with-zlib=../zlib-1.2.11 \
            --with-compat \
            --with-file-aio \
            --with-threads \
            --with-http_addition_module \
            --with-http_auth_request_module \
            --with-http_dav_module \
            --with-http_flv_module \
            --with-http_gunzip_module \
            --with-http_gzip_static_module \
            --with-http_mp4_module \
            --with-http_random_index_module \
            --with-http_realip_module \
            --with-http_slice_module \
            --with-http_ssl_module \
            --with-http_sub_module \
            --with-http_stub_status_module \
            --with-http_v2_module \
            --with-http_secure_link_module \
            --with-mail \
            --with-mail_ssl_module \
            --with-stream \
            --with-stream_realip_module \
            --with-stream_ssl_module \
            --with-stream_ssl_preread_module \
            --with-debug \
