sudo yum install nginx php mariadb105-server -y
sudo service nginx start
sudo service php-fpm start
sudo service mariadb start
cd /usr/share/nginx/html
sudo rm  index.html
touch index.html index.php
echo "This is nginx html page" | sudo tee index.html
echo "<?php phpinfo(); ?>" | sudo tee index.php
curl http://localhost
