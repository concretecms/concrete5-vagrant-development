if node[:box_setup][:dev_stack][:enable] && node[:box_setup][:dev_stack][:opts][:nodejs][:install]

  # If NodeJS is installed, autofix the self-signed cert issue for NPM
  # https://twitter.com/npmjs/status/439279809307242496
  execute "Auto-correcting NPM Self-Signed Cert Issue..." do
    cwd '/home/vagrant'
    user 'root'
    command '/usr/local/bin/npm config set ca=""'
    action :run
  end

  # Install GruntJS?
  if node[:box_setup][:dev_stack][:opts][:nodejs][:gruntjs]
    execute "Installing GruntJS via NPM..." do
      cwd '/home/vagrant'
      user 'root'
      command '/usr/local/bin/npm install -g grunt-cli'
      action :run
    end
  end

  # Install Bower?
  if node[:box_setup][:dev_stack][:opts][:nodejs][:bower]
    execute "Installing Bower via NPM..." do
      cwd '/home/vagrant'
      user 'root'
      command '/usr/local/bin/npm install -g bower'
      action :run
    end
  end

  # If nodejs enabled, auto-install all dependencies in package.json?
  if node[:box_setup][:dev_stack][:opts][:nodejs][:auto_npm]
    execute "Auto-installing all NPM dependencies in build/package.json..." do
      cwd '/home/vagrant/app/build'
      user 'root'
      command '/usr/local/bin/npm install'
      action :run
    end
  end

end