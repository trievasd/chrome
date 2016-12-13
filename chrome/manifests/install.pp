class chrome {
	package {'google-chrome-stable':
	ensure => installed,
	allowcdrom => true,	
	}
}
