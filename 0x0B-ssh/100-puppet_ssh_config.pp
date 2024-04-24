# Puppet manifest which creates an ssh config file 'ssh_config'
augeas { 'ssh_config' :
  context  => '~/.ssh/ssh_config',
  changes  => [
    "touch ~/.ssh/ssh_config",
    "set PasswordAuthentication no",
    ": set IdentityFile ~/.ssh/school",
  ]
}
