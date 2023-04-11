case node['platform_family']
when 'debian'
  default['ssl_certificate']['user'] = 'root'
  default['ssl_certificate']['group'] = 'root'
  default['ssl_certificate']['key_dir'] = '/etc/ssl/private'
  default['ssl_certificate']['cert_dir'] = '/etc/ssl/certs'
when 'rhel', 'fedora'
  default['ssl_certificate']['user'] = 'root'
  default['ssl_certificate']['group'] = 'root'
  default['ssl_certificate']['key_dir'] = '/etc/pki/tls/private'
  default['ssl_certificate']['cert_dir'] = '/etc/pki/tls/certs'
when 'openbsd', 'freebsd', 'mac_os_x'
  default['ssl_certificate']['user'] = 'root'
  default['ssl_certificate']['group'] = 'wheel'
  default['ssl_certificate']['key_dir'] = '/etc/ssl'
  default['ssl_certificate']['cert_dir'] = '/etc/ssl'
when 'windows'
  default['ssl_certificate']['user'] = 'SYSTEM'
  default['ssl_certificate']['group'] = 'Administrators'
  default['ssl_certificate']['key_dir'] = Chef::Config[:file_cache_path]
  default['ssl_certificate']['cert_dir'] = Chef::Config[:file_cache_path]
else
  default['ssl_certificate']['user'] = 'root'
  default['ssl_certificate']['group'] = 'root'
  default['ssl_certificate']['key_dir'] = '/etc'
  default['ssl_certificate']['cert_dir'] = '/etc'
end
