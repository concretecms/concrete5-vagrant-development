# Concrete5
default[:box_setup][:concrete5][:admin_pass] = 'c5@dmin'
default[:box_setup][:concrete5][:db_name] = 'concrete5_site'
default[:box_setup][:concrete5][:db_username] = 'root'
default[:box_setup][:concrete5][:db_password] = 'root'
default[:box_setup][:concrete5][:db_server] = '127.0.0.1'
default[:box_setup][:concrete5][:pretty_urls] = true

# Dev tools
default[:box_setup][:dev_stack][:enable] = false
default[:box_setup][:dev_stack][:opts][:php_tools][:xdebug] = true
default[:box_setup][:dev_stack][:opts][:php_tools][:phpunit] = true
default[:box_setup][:dev_stack][:opts][:redis] = true
default[:box_setup][:dev_stack][:opts][:nodejs][:install] = true
default[:box_setup][:dev_stack][:opts][:nodejs][:gruntjs] = true
default[:box_setup][:dev_stack][:opts][:nodejs][:bower] = true
default[:box_setup][:dev_stack][:opts][:nodejs][:auto_npm] = true
default[:box_setup][:dev_stack][:opts][:ruby][:rbenv] = true
default[:box_setup][:dev_stack][:opts][:ruby][:version] = '2.1.0'
default[:box_setup][:dev_stack][:opts][:ruby][:gems] = []

# Other settings not necessarily displayed in the Vagrantfile, but configurable
default[:box_setup][:application_name] = 'concrete5'
default[:box_setup][:server_name] = 'localhost'
default[:box_setup][:server_aliases] = ["*.localhost"]
default[:box_setup][:server_docroot] = '/home/vagrant/app/web'
default[:box_setup][:php_timezone] = 'UTC'