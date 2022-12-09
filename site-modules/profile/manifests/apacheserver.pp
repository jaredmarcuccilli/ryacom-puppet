# /etc/puppetlabs/code/environments/production/site/profile/manifests/webserver/apacheserver.pp
class profile::apacheserver (
  package { 'httpd' :
    ensure => installed,
  }
}
