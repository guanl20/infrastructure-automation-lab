class infrastructure_automation_lab {

  package { 'curl':
    ensure => installed,
  }

  file { '/etc/infrastructure-automation-lab':
    ensure => directory,
    mode   => '0755',
  }

  file { '/etc/infrastructure-automation-lab/lab.conf':
    ensure  => file,
    content => "Infrastructure Automation Lab\nManaged by Puppet\n",
    mode    => '0644',
    require => File['/etc/infrastructure-automation-lab'],
  }
}

include infrastructure_automation_lab
