class profile::apacheserver {
  class { 'apache':
    default_vhost => false,
  }
  apache::vhost { 'mynode.company.com':
    port    => '80',
    docroot => '/var/www/mynode.company.com',
  }
}
