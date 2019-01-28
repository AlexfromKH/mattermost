# Class download::mattermost
# ***************************
class mattermost::download (
  String  $mmversion      = $mattermost::params::mmversion,
  String  $mmdir          = $mattermost::params::mmdir,
  String  $mmdata         = $mattermost::params::mmdata,
  String  $mmdownload     = $mattermost::params::mmdownload,
  String  $mmchecksum     = $mattermost::params::mmchecksum,
  ) inherits mattermost::params {

  archive {"${mmdir}/mattermost-team-${mmversion}-linux-amd64.tar.gz":
    ensure        => present,
    extract       => true,
    source        => $mmdownload,
#    checksum      => $mmchecksum,
#    checksum_type => 'sha256',
    creates       => '/opt/mattermost',
  }
}
