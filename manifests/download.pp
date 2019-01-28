# Class download::mattermost
# ***************************
class mattermost::download (
  String  $mmversion      = $mattermost::params::mmversion,
  String  $mmdir          = $mattermost::params::mmdir,
  String  $mmdata         = $mattermost::params::mmdata,
  String  $mmdownload     = $mattermost::params::mmdownload,
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
