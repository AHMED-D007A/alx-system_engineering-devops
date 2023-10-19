# Change the OS configuration so that it is possible to login with the holberton user and open a file without any error message.
exec {'Change the OS configuration':
	provider => shell,
	command => ''
}
