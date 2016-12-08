class mozillabasicsetup {
	package { 'firefox':
		ensure => "installed",
	}
	file {"/etc/firefox/syspref.js":
		content => template('mozillabasicsetup/syspref.js'),
	}
}
