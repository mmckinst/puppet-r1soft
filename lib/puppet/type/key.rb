Puppet::Type.newtype(:key) do
  @doc = 'Add Server key(s) to agent.'

  ensurable

  newparam(:hostname) do
    desc 'Hostname of the r1soft server to retrieve the key from.'
    isnamevar
  end

  newparam(:scheme) do
    desc 'URI scheme to use. r1soft supports http and https, https is the default for this module.'
    defaultto 'https'
  end

  newparam(:port) do
    desc 'Specify port number to use for the connection. (default: 9443)'
    defaultto '9443'
  end

end

