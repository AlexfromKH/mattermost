# Class: mattermost::setup
# *************************
#
class mattermost::setup (
  String $mmdir       = $mattermost::params::mmdata,
  String $mmuser      = $mattermost::params::mmuser,
) inherits mattermost::params {

  file {$mmdir:
    ensure  => directory,
  }
  group { $mmuser:
    ensure  => present,
  }
  user {$mmuser:
    name    => $mmuser,
    groups  => $mmuser,
    require => Group[$mmuser],
  }
  file { "${mmdir}/${mmuser}":
    ensure => 'directory',
    group  => $mmuser,
    mode   => '0664',
    owner  => $mmuser,
  }
}
