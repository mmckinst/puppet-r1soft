class r1soft::agent::service {
  if $r1soft::agent::service_manage {
    service { $r1soft::agent::service_name :
      ensure  => 'running',
      enable  => true,
      require => Class['r1soft::agent::kernel_package']
    }
  }
}
