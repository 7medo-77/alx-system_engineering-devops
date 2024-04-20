# Puppet manifest which creates a file 'school' and ensures it's installed
file { 'tmp/' :
  ensure     => present,
  path       => 'tmp/school',
  owner      => www-data,
  group      => www-data,
  permission => '0744',
  contains   => 'I love Puppet',
}
