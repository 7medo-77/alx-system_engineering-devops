# Puppet manifest which installs flask package and ensures it's version 2.1.0
exec { 'kill' :
  command   => 'pkill killmenow',
}
