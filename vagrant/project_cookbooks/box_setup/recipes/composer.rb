if node[:box_setup][:dev_stack][:enable] && node[:box_setup][:dev_stack][:opts][:composer][:install]
	if node[:box_setup][:dev_stack][:opts][:composer][:auto_install_packages]
		composer_project node[:box_setup][:dev_stack][:opts][:composer][:composerjson_location] do
			dev false
			quiet false
			action :install
		end
	end
end