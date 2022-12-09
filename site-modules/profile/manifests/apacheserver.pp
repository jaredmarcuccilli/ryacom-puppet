# /etc/puppetlabs/code/environments/production/site/profile/manifests/webserver/apacheserver.pp
class profile::apacheserver (
  String $content      = "Hello from vhost\\n",
  Array[String] $ports = ['80'],
  Array[String] $ips   = ['127.0.0.1','127.0.0.2']
) 
{
  class { 'apache':
    default_vhost => false,
  }
{
  apache::vhost { 'example.com':
    port     => $ports,
    ip       => $ips,
    ip_based => true,
    docroot  => '/var/www/html',
  }
  file { '/var/www/html/index.html':
    ensure  => file,
    content => $content,
  }
}
