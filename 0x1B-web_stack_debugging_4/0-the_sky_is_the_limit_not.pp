# Fixing nginx server failed requestes.
exec {'config':
  provider => shell,
  command  => 'sed -i "s/15/4096/" /etc/default/nginx ; sudo service nginx restart'
}
