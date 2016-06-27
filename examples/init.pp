class {'proxy_client':
  http_proxy  => 'http://proxy.example:3128',
  https_proxy => 'http://proxy.example:3128',
  no_proxy    => ['puppet.example','10.0.99.1']
}

