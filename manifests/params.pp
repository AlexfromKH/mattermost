# Class: mattermost::params
# **************************
#
class mattermost::params {
# mysql params
  $mysql_r_pass    = 'root'
  $mmuser          = 'mmuser'
  $mmpass          = 'mmpass'
#
# mattermost params
  $mmversion       = '5.7.0'
  $mmdir           = '/opt'
  $mmdata          = "${mmdir}/mattermost/data"
  $mmdownload      = "https://releases.mattermost.com/${mmversion}/mattermost-team-${mmversion}-linux-amd64.tar.gz"
  $mmchecksum      = '1220e25f501e41db9bee6af14dd12'
}
