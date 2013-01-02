class ntp {

  package { 'ntp':
    ensure => installed
  }

  service { 'ntpd':
    ensure  => running,
    require => Package["ntp"],
  }

  file { "/etc/ntp.conf":
    ensure  => present,
    mode    => 664,
    source => 'puppet:///modules/ntp/ntp.conf',
    path    => "/etc/ntp.conf",
    require => Package["ntp"],
    notify  => Service["ntpd"];
  }

}
