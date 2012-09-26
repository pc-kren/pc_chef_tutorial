maintainer       "Ryan J. Geyer"
maintainer_email "me@ryangeyer.com"
license          "All rights reserved"
description      "Installs/Configures rjg"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w{rightscale}.each do |d|
  depends d
end

recipe "rjg::helloworld", "Prints hello world"
recipe "rjg::install_foo", "Moves foo.txt to /tmp/foo.txt"
recipe "rjg::change_index", "Changes the /var/www/index.html content"

attribute "rjg/fetch_container",
  :display_name => "S3 Bucket",
  :required => "required",
  :recipes => ["rjg::helloworld"]

attribute "rjg/fetch_prefix",
  :display_name => "S3 File Prefix",
  :required => "required",
  :recipes => ["rjg::helloworld"]

attribute "rjg/apache_package_name",
  :display_name => "Apache Package Name",
  :description => "An override for the apache package name",
  :default => 'apache2',
  :recipes => ["rjg::helloworld"]

attribute "rjg/my_name",
  :display_name => "My Name",
  :description => "My name for the index.html file",
  :required => "required",
  :recipes => ["rjg::change_index"]
