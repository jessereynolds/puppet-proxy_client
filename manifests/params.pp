proxy_client::params {
  case $os['family'] {
    'RedHat': {
      $profile_d = '/etc/profile.d'
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
}

