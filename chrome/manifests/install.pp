class chrome::install {
	package {'google-chrome-stable':
	ensure => installed,
	allowcdrom => true,
	install_options => [ '-y', '--allow-unauthenticated' ],
	}
	
}
