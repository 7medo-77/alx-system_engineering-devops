#!/usr/bin/pup
# Puppet manifest which installs flask package and ensures it's version 2.1.0
package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
