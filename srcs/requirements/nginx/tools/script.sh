cd /etc/nginx/ssl/

openssl genrsa -out private.key 2048

openssl req -x509 -new -nodes -key private.key -out cert.pem -subj "/C=MA/ST=TDL/L=bengrir/O=frf/OU=ff/CN=ytijani.42.fr/UID=lolo"

openssl x509 -days 356 -in cert.pem -signkey private.key -out certificate.crt
