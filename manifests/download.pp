# Class download::mattermost
# ***************************
class mattermost::download (
    $mmversion      = $mattermost::params::mmversion,
    $mmdir          = $mattermost::params::mmdir,
    $mmdata         = $mattermost::params::mmdata,
    $mmdownload     = $mattermost::params::mmdownload,
  ) inherits mattermost::params {

  archive {"${mmdir}/mattermost-team-${mmversion}-linux-amd64.tar.gz":
    ensure        => present,
    extract       => true,
    source        => $mmdownload,
    checksum      => '1220e25f501e41db9bee6af14dd12583c1f95658a55862da42a1268d160b10c4',
    checksum_type => 'sha256',
    creates       => '/opt/mattermost',
  }
}
