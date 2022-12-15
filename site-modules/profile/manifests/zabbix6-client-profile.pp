class profile::zabbix6clientprofile {
  class { 'zabbix::agent':
    server => 'zabbix.ad.ryacom.org',
    zabbix_version       => '6.0',
    manage_repo          => true,
    zabbix_package_state => 'latest',
  }
}
