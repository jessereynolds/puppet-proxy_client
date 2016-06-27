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
  $http_proxy  = undef,
  $https_proxy = undef,
  $no_proxy    = [],
  $profile_d   = $::proxy_client::params::profile_d,
) inherits proxy_client::params {

  File {
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }

  file {$profild_d:
    ensure => directory,
  }

  file {'proxy_profile':
    ensure  => file,
    path    => "$profile_d/proxy.sh",
    content => template('modules/proxy_client/proxy.sh.erb'),
  }

}

