class r1soft::agent::kernel_module {
  if $r1soft::agent::kernel_module_install {
    exec { 'hcp-setup --get-module':
       refreshonly => true,
       path        => '/usr/sbin:/sbin:/bin:/usr/sbin',
       require     => Class['r1soft::agent::kernel_package'],
       subscribe   => Class['r1soft::agent::install'],
    }
  }
}
