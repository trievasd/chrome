class chrome::preconfig {
	file { '/etc/apt/sources.list':
	content => template("/etc/puppet/modules/chrome/templates/sources.list"),
	}
	exec { 'add-linux-key':
	command => 'wget https://dl.google.com/linux/linux_signing_key.pub && apt-key add linux_signing_key.pub',
	path    => '/usr/bin/',
	user => root,
	}
	exec { 'apt update':
	command => 'apt-get update',
	path    => '/usr/bin/',
	user => root,
	} 
}
File['/etc/apt/sources.list'] ~> Exec['add-linux-key'] ~> Exec['apt update']
