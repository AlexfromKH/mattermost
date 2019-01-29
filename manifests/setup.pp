# Class: mattermost::setup
# *************************
#
class mattermost::setup (
  String $mmdir       = $mattermost::params::mmdir,
  String $mmuser      = $mattermost::params::mmuser,
  String $mmdata      = $mattermost::params::mmdata,
) inherits mattermost::params {

  file { $mmdata:
    ensure  => directory,
  }
  group { $mmuser:
    ensure  => present,
  }
  user { $mmuser:
    name    => $mmuser,
    groups  => $mmuser,
    require => Group[$mmuser],
  }
  file { "${mmdir}/${mmuser}":
    ensure  => 'directory',
    group   => $mmuser,
    mode    => '0664',
    owner   => $mmuser,
#    require => [ User[$mmuser], Group[$mmuser] ],
  }
  notify {"${mmdir}/${mmuser}":}
}
