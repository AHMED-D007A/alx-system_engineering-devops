# automate the task of creating a custom HTTP header response.
exec {"configure":
	provider => shell,
	command => 'sudo apt-get update ; sudo apt-get install -y nginx ; sudo service nginx start ; sudo sed -i "s|location / {|location / {\n\t\tadd_header X-Served-By $HOSTNAME;|" /etc/nginx/sites-available/default ; sudo service nginx restart'
}
