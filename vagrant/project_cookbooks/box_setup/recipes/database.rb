# Create database before running CLI installation. If already created,
# will fail silently
mysql_database node[:box_setup][:concrete5][:db_name] do
  connection(
      :host => node[:box_setup][:concrete5][:db_server],
      :username => node[:box_setup][:concrete5][:db_username],
      :password => node[:mysql][:server_root_password]
  )
  action :create
end