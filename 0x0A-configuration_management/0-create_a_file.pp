# Puppet manifest which creates a file 'school' and ensures it's installed
file { 'tmp/' : 
	path => 'tmp/school',
	ensure => present,
	owner => www-data,
	group => www-data,
	permission => '0744',
	contains => 'I love Puppet',
}
