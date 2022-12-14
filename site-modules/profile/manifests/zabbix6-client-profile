class profile::zabbix6-client-profile {
  class { 'zabbix::agent':
    server => 'zabbix.ad.ryacom.org',
    zabbix_version       => '6.0',
    manage_repo          => true,
    zabbix_package_state => 'latest',
  }
}
