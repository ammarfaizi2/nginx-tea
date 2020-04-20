
for i in $(ls myconf/snippets/); do
  rm -vf /etc/nginx/conf/$i;
done;

cp -vfr $(pwd)/myconf/sites-enabled /etc/nginx;
cp -vfr $(pwd)/myconf/snippets /etc/nginx/conf;
cp -vf  $(pwd)/myconf/nginx.conf /etc/nginx/conf;
# cp -vf  $(pwd)/nginx.service /lib/systemd/system;
# systemctl daemon-reload;
