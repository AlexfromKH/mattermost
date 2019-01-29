# Class: mattermost::params
# **************************
#
class mattermost::params {
# mysql params
  $mysql_r_pass    = 'root'
  $mmuser          = 'mattermost'
  $mmpass          = 'mmpass'
#
# mattermost params
  $mmversion       = '5.7.0'
  $mmdir           = '/opt'
  $mmdata          = "${mmdir}/mattermost/data"
  $mmdownload      = "https://releases.mattermost.com/${mmversion}/mattermost-team-${mmversion}-linux-amd64.tar.gz"
  $mmchecksum      = '1220e25f501e41db9bee6af14dd12583c1f95658a55862da42a1268d160b10c4'
}
