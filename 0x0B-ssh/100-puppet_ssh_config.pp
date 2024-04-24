# Puppet manifest which creates an ssh config file 'ssh_config'
exec { '~/.ssh/ssh_config' :
  command  => 'echo "PasswordAuthentication no\nIdentityFile ~/.ssh/school" >> ~/.ssh/ssh_config',
  mode     => '0600',
  onlyif   => 'stat ~/.ssh/ssh_config',
}
