class r1soft::agent::key(
  $add_server_keys = $r1soft::params::add_server_keys,
  $r1soft_server   = $r1soft::params::r1soft_server,
  $server_port     = $r1soft::params::server_port,
  $scheme          = $r1soft::params::scheme,
) inherits r1soft::params {
  if $add_server_keys {
    key { "$r1soft_server":
      port    => $server_port,
      scheme  => $scheme,
      require => Class['r1soft::agent::install']
    }
  }
}
