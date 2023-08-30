# puppet script to configure nginx configuration files
exec {'install':
	provider => shell,
	command => 'sudo apt-get -y update ; sudo apt-get -y install nginx ; sudo service nginx start ; sudo echo "Hello World!" | sudo tee /var/www/html/index.nginx-debian.html ; sudo sed -i "s|server_name _;|server_name _;\n\trewrite ^/redirect_me https://github.com/Ahmed-D007A permanent;|" /etc/nginx/sites-available/default ; sudo service nginx restart'
}
