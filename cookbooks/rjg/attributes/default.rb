case node['platform']
  when "centos","rhel"
    default['rjg']['apache_package_name'] = 'httpd'
  when "ubuntu","debian"
    default['rjg']['apache_package_name'] = 'apache2'
end
