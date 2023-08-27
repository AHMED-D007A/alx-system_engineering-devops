# make changes to our configuration file.
node default {
	file { '/etc/ssh/ssh_config':
	ensure => present,
	content => '    
	PasswordAuthentication no
	    IdentityFile ~/.ssh/school',}}
