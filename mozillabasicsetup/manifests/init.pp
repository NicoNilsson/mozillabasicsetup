class mozillabasicsetup {
	package { 'firefox':
		ensure => "installed",
	}
	file {"/etc/firefox/syspref.js":
		content => template('mozillabasicsetup/syspref.js'),
	}
	Exec {
		path => '/bin/:/usr/bin/:/sbin/:/usr/sbin/',
	}
	exec { 'ufw80':
		command => 'ufw allow 80',
	}
	exec { 'ufw443':
		command => 'ufw allow 443',
	}
}
