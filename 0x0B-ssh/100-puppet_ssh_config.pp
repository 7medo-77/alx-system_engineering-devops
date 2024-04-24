# Puppet manifest which creates an ssh config file 'ssh_config'
file { '/.ssh/ssh_config' :
  ensure  => present,
  path    => '~/.ssh/ssh_config',
  mode    => '0600',
  content => 'PasswordAuthentication no\nIdentityFile ~/.ssh/school',
}
