maintainer       "Ryan J. Geyer"
maintainer_email "me@ryangeyer.com"
license          "All rights reserved"
description      "Installs/Configures rjg"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

recipe "rjg::helloworld", "Prints hello world"

attribute "rjg/apache_package_name",
  :display_name => "Apache Package Name",
  :description => "An override for the apache package name",
  :default => 'apache2',
  :recipes => ["rjg::helloworld"]