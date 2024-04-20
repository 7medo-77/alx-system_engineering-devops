# Puppet manifest which executes a pkill command on killmenow process
exec { 'pkill' :
  command => 'pkill killmenow',
  path    => '/usr/bin/:/usr/sbin/',
}
