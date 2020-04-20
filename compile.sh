sudo apt-get install -y geoip-database libgeoip-dev libatomic-ops-dev;

./configure \
--prefix=/usr/local/nginx \
--http-log-path=/var/log/nginx/access.log \
--error-log-path=/var/log/nginx/error.log \
--user=root \
--group=root \
--builddir=$(pwd)/build \
--with-select_module \
--with-poll_module \
--with-threads \
--with-file-aio \
--with-http_ssl_module \
--with-http_v2_module \
--with-http_realip_module \
--with-http_addition_module \
--with-mail=dynamic \
--with-mail_ssl_module \
--with-http_xslt_module=dynamic \
--with-http_image_filter_module=dynamic \
--with-http_geoip_module=dynamic \
--with-http_sub_module \
--with-http_dav_module \
--with-http_flv_module \
--with-http_mp4_module \
--with-http_gunzip_module \
--with-http_gzip_static_module \
--with-http_auth_request_module \
--with-http_random_index_module \
--with-http_secure_link_module \
--with-http_degradation_module \
--with-http_slice_module \
--with-http_stub_status_module \
--with-stream=dynamic \
--with-stream_ssl_module \
--with-stream_realip_module \
--with-stream_geoip_module=dynamic \
--with-stream_ssl_preread_module \
--with-compat \
--with-pcre=$(pwd)/ext/pcre-8.43 \
--with-pcre-jit \
--with-zlib=$(pwd)/ext/zlib-1.2.11 \
--with-libatomic \
--with-openssl=$(pwd)/ext/openssl-1.1.1f

sudo make install;