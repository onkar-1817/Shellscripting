sudo apt-get update -y
sudo apt-get install nginx php mysql-server php8.3-fpm -y
sudo service nginx start
sudo service php8.3-fpm start
sudo service mysql start
cd /var/www/html
sudo touch index.php
echo "<?php phpinfo(); ?>" | sudo tee index.php
curl http://localhost
