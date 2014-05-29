# Set the default Locale file for the OS
cookbook_file 'etc/default/locale' do
  owner 'root'
  group 'root'
  mode 0644
  source 'locale'
end

# Auto-enable pretty urls?
if node[:box_setup][:concrete5][:pretty_urls]
  template "/home/vagrant/app/web/.htaccess" do
    source "htaccess.erb"
    owner "vagrant"
    group "vagrant"
    mode 0644
  end
end