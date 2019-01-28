# Class: mattermost
# *****************
class mattermost {
  include mattermost::download
#  include mattermost::service
#  include mattermost::nginx

#  Class['mattermost::mysql'] -> Class['mattermost::download'] -> Class['mattermost::service'] ~> Class['mattermost::nginx']
}

