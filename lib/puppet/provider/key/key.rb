Puppet::Type.type(:key).provide(:key) do

  def create
    url = resource[:scheme] + "://" + resource[:hostname] + ":" + resource[:port]
    notice "Adding key for the host: #{resource[:hostname]}"
    %x{r1soft-setup --get-key #{url}}
  end
  
  def destroy
    notice "Removing key for the host: #{resource[:hostname]}"
    %x{r1soft-setup --remove-key #{resource[:hostname]}}
  end

  def exists?
    system("r1soft-setup --list-keys | grep -qF '[[:space:]]#{resource[:hostname]}$'")
  end

end
