
default:	build

clean:
	rm -rf Makefile /home/ammarfaizi2/project/now/nginx-tea/build

build:
	$(MAKE) -f /home/ammarfaizi2/project/now/nginx-tea/build/Makefile

install:
	$(MAKE) -f /home/ammarfaizi2/project/now/nginx-tea/build/Makefile install

modules:
	$(MAKE) -f /home/ammarfaizi2/project/now/nginx-tea/build/Makefile modules

upgrade:
	/usr/sbin/nginx -t

	kill -USR2 `cat /etc/nginx/logs/nginx.pid`
	sleep 1
	test -f /etc/nginx/logs/nginx.pid.oldbin

	kill -QUIT `cat /etc/nginx/logs/nginx.pid.oldbin`
