
cd /var/www/wordpress/
wp core download  --allow-root

wp config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${WORDPRESS_DB_HOST} --path=/var/www/wordpress/ --allow-root

wp core install --url=${DOMAIN_NAME} --title=MyWebsite --admin_user=${WORDPRESS_ROOT_USER} --admin_password=${WORDPRESS_ROOT_PASSWORD} --admin_email=lolo@tee.com --allow-root
wp user create ${WORDPRESS_USER} teek@email.com --user_pass=${WORDPRESS_PASSWORD} --role=author --allow-root
exec $@
