class chrome::install {
	package {'google-chrome-stable':
	ensure => installed,
	allowcdrom => true,	
	}
}
