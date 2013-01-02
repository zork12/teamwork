class mysql {
    package { 'MySQL-server':
        ensure => installed;
    }

    package { 'MySQL-client':
        ensure => installed;
    }

    service { 'mysql':
        ensure => running,
    }
}
