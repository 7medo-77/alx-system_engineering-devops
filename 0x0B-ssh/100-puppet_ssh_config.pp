# Puppet manifest which creates an ssh config file 'ssh_config'
exec { '~/.ssh/ssh_config' :
  command => 'mkdir -p ~/.ssh; touch ~/.ssh/authorized_keys; echo "PasswordAuthentication no\nIdentityFile ~/.ssh/school"',
  mode    => '0600',
  unless  => 'stat ~/.ssh/authorized_keys'
  content => 'PasswordAuthentication no\nIdentityFile ~/.ssh/school',
}
