class profile::zabbix6_server {
  file_line { 'line_replace':
    path  => '/usr/share/zabbix/vendor/onelogin/php-saml/src/Saml2/Settings.php',
    match => '/^(?=.*?\brequestedAuthnContext\b)(?=.*?\btrue\b).*$/gm',
    line  => "            \$this->_security[\'requestedAuthnContext\'] = false;",
    append_on_no_match => true,
  }
}
