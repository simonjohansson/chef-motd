action :create do
  motd = new_resource.motd

  # Remove /etc/motd since its a symlink to /var/run/motd
  # which gets populated on reboot.
  file "/etc/motd" do
    action :delete
  end

  template "/etc/motd" do
    source "motd.erb"
    cookbook "motd"
    variables :motd => motd
    mode 644
    user "root"
    group "root"
  end
end

