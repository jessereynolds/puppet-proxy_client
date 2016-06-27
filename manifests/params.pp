class proxy_client::params {

  case $os['family'] {
    'RedHat','Darwin','Debian': {
      $profile_d = '/etc/profile.d'
    }
    default: {
      fail("The ${module_name} module is not supported on ${::osfamily} based systems.")
    }
  }

}

