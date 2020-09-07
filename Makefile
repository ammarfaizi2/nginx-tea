
default:	build

clean:
	rm -rf Makefile /root/server/app/nginx-tea/build

build:
	$(MAKE) -f /root/server/app/nginx-tea/build/Makefile

install:
	$(MAKE) -f /root/server/app/nginx-tea/build/Makefile install

modules:
	$(MAKE) -f /root/server/app/nginx-tea/build/Makefile modules

upgrade:
	/usr/sbin/nginx -t

	kill -USR2 `cat /etc/nginx/logs/nginx.pid`
	sleep 1
	test -f /etc/nginx/logs/nginx.pid.oldbin

	kill -QUIT `cat /etc/nginx/logs/nginx.pid.oldbin`
