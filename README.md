# proxy_client

#### Table of Contents

1. [Description](#description)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Limitations - OS compatibility, etc.](#limitations)

## Description

This module configures your proxy environment variables.

## Usage

Call it like this:

```puppet
class {'proxy_client':
  http_proxy  => 'http://proxy.example:3128',
  https_proxy => 'http://proxy.example:3128',
  no_proxy    => ['puppet.example','10.0.99.1']
}
```

## Limitations

Currently only supports RedHat.

