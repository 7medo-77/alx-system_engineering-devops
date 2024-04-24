# Puppet manifest which creates an ssh config file 'ssh_config'
#file { '~/.ssh/ssh_config' :
#  ensure  => present,
#  path    => '/etc/.ssh/ssh_config',
#  mode    => '0600',
#  content => 'PasswordAuthentication no\nIdentityFile ~/.ssh/school',
#}

# Puppet script to create ssh config file
file_line { 'Turn off passwd auth':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
}

file_line { 'Declare identity file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/school',
}
