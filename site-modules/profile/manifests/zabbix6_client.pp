class profile::zabbix6_client {
  class { 'zabbix::agent':
    server => 'zabbix.ad.ryacom.org',
    manage_firewall      => true,
    manage_repo          => true,
    zabbix_package_state => 'latest',
  }
}
