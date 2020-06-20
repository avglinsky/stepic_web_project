
#!/bin/bash

## Install
#sudo pip install django-autofixture pytz
#sudo apt-get install -y w3m

#sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
#sudo rm -rf /etc/nginx/sites-enabled/default
#sudo /etc/init.d/nginx restart

# Nginx
if [ -f /etc/nginx/sites-enabled/default ]; then
  sudo rm /etc/nginx/sites-enabled/default
fi
touch /home/box/nginx.log
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

# Gunicorn (ver. 17.5)
touch /home/box/gunicorn.log
sudo ln -sf /home/box/web/etc/gunicorn-wsgi.conf /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart

# MySQL
#echo 'innodb_use_native_aio = 0' | sudo tee --append /etc/mysql/my.cnf
#sudo service mysql restart
#sudo mysql -uroot -e "CREATE DATABASE ask CHARACTER SET utf8 COLLATE utf8_general_ci;"
#sudo mysql -uroot -e "GRANT ALL PRIVILEGES ON ask.* TO 'ask_user'@'localhost' IDENTIFIED BY '123456789';"

#sudo ln -sf /home/box/web/etc/gunicorn-wsgi.conf /etc/gunicorn.d/test-wsgi
#sudo ln -sf /home/box/web/etc/gunicorn-django.conf /etc/gunicorn.d/test-django
#sudo /etc/init.d/gunicorn restart
