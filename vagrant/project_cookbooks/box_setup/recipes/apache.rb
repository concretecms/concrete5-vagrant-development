# Ditch "could not reliably determine hostname"
cookbook_file '/etc/apache2/httpd.conf' do
  owner 'root'
  group 'root'
  mode 0644
  source 'httpd.conf'
end

# Copy self-signed SSL certificate
cookbook_file '/etc/ssl/certs/vagrant_apache_ssl.pem' do
  owner 'root'
  group 'root'
  mode 0644
  source 'vagrant_apache_ssl.pem'
end

# Setup vhost (template points to /home/vagrant/app/web)
web_app "default" do
  template 'apache_vhost.conf.erb'
  server_name node[:box_setup][:server_name]
  server_alias node[:box_setup][:server_aliases]
  docroot node[:box_setup][:server_docroot]
  php_timezone node[:box_setup][:php_timezone]
end