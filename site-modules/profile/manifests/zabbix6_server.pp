class profile::zabbix6_server {
  file_line { 'line_replace':
    path  => '/usr/share/zabbix/vendor/onelogin/php-saml/src/Saml2/Settings.php',
    match => "            $this->_security['requestedAuthnContext'] = true;",
    line  => "            $this->_security['requestedAuthnContext'] = false;",
  }
}
