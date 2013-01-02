class sudo {
    package { "sudo":
        ensure => installed;
    }

    file { "/etc/sudoers":
        ensure  => present,
        owner   => root,
        group   => root,
        mode    => '0440',
        source  => 'puppet:///modules/sudo/sudoers',
        path    => "/etc/sudoers",
        require => Package["sudo"];
    }
}
