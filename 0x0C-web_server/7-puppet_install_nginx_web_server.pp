exec {'update':
  command  => 'sudo apt-get -y update',
  provider => shell
}

package {'nginx':
  ensure   => installed,
  provider => apt,
}

file {'index.html':
  ensure  => present,
  content => 'Hello World!',
  path    => '/var/www/html/',
}

file {'404.html':
  ensure  => present,
  content => 'Ceci n\'est pas une page',
  path    => '/var/www/html/',
}

exec {'restart':
  command  => 'sudo service nginx restart',
  provider => shell
}
