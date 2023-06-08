mkdir -p /var/www/
mkdir -p /var/www/wordpress/

cd /var/www/wordpress/

wp core download  --allow-root

wp config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${WORDPRESS_DB_HOST} --path=/var/www/wordpress/ --allow-root

wp core install --url=${DOMAIN_NAME} --title=MyWebsite --admin_user=lolo --admin_password=123456 --admin_email=lolo@tee.com --allow-root
wp user create teek teek@email.com --user_pass=1234 --role=author --allow-root
exec $@
