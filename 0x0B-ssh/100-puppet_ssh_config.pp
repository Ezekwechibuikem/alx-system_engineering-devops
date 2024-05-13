#Client config file set up
include stdlib

file_line { 'Host name':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'Host 34.207.211.165',
}

file_line { 'Turn off passwd auth':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
}

file_line { 'Delare identity file':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/school',
}
