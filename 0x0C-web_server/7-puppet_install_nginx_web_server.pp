# Puppet script to configure a fresh ubuntu install with nginx

# exec {'update':
#   command  => 'sudo apt-get -y update',
#   provider => shell
# }
# 
# package {'nginx':
#   ensure   => installed,
#   provider => apt,
# }
# 
# exec {'configuration':
#   command  => 'sudo sed -i "s/listen 80 default_server;/listen 80 default_server;
#   \\n\\tlocation \/redirect_me {\\n\\t\\treturn 301 
#   https:\/\/youtube.com\/;\\n\\t}/" 
#   /etc/nginx/sites-available/default',
#   provider => shell,
# }
# 
# file {'index.html':
#   ensure  => present,
#   content => 'Hello World!',
#   path    => '/var/www/html/',
# }
# 
# file {'404.html':
#   ensure  => present,
#   content => 'Ceci n\'est pas une page',
#   path    => '/var/www/html/',
# }
# 
# exec {'restart':
#   command  => 'sudo service nginx restart',
#   provider => shell
# }

package {'nginx':
  ensure => 'present',
}

exec {'install':
  command  => 'sudo apt-get update ; sudo apt-get -y install nginx',
  provider => shell,

}

exec {'Hello':
  command  => 'echo "Hello World!" | sudo tee /var/www/html/index.html',
  provider => shell,
}

exec {'sudo sed -i "s/listen 80 default_server;/listen 80 default_server;\\n\\tlocation \/redirect_me {\\n\\t\\treturn 301 https:\/\/blog.ehoneahobed.com\/;\\n\\t}/" /etc/nginx/sites-available/default':
  provider => shell,
}

exec {'run':
  command  => 'sudo service nginx restart',
  provider => shell,
}
