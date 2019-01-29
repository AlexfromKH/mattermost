# Class: mattermost
# *****************
class mattermost {
  include mattermost::download
  include mattermost::setup
#  include mattermost::service
#  include mattermost::nginx
#
  Class['mattermost::download'] -> Class['mattermost::setup']
#  Class['mattermost::mysql'] -> Class['mattermost::download'] -> Class['mattermost::service'] ~> Class['mattermost::nginx']
}

