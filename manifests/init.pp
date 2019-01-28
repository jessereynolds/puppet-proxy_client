# [*manage_profile*]
# Boolean if true this modile ensure that $profile_d is a directory
# default set to false
#
# Examples
# --------
#
# @example
#    class { 'proxy_client':
#      http_proxy  => 'http://proxy.example:3128/',
#      https_proxy => 'http://proxy.example:3128/',
#      no_proxy    => ['master', 'master.pupppetlabs.vm', '10.0.99.1'],
#    }
#
class proxy_client (
  $http_proxy     = undef,
  $https_proxy    = undef,
  $no_proxy       = [],
  Boolean $manage_profile = false,
  $profile_d      = $::proxy_client::params::profile_d,
) inherits proxy_client::params {

  if $manage_profile {
    file { $profile_d:
      ensure => directory,
    }
  }

  file {'proxy_profile':
    ensure  => file,
    path    => "$profile_d/proxy.sh",
    content => template('proxy_client/proxy.sh.erb'),
  }

}

