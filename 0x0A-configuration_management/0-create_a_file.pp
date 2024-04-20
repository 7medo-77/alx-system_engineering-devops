# Puppet manifest which creates a file 'school' and ensures it's installed
file { '/tmp/school' :
  ensure  => present,
  path    => '/tmp/school',
  owner   => www-data,
  group   => www-data,
  mode    => '0744',
  content => 'I love Puppet',
}
