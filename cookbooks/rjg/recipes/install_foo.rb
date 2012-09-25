pkg_dir = "/opt/personal_capital/packages"
pkg_file = ::File.join(pkg_dir, "foo.txt")

file pkg_file do
  action :nothing
end

cookbook_file pkg_file do
  source "foo.txt"
  action :nothing
 end

directory pkg_dir do
  recursive true
  notifies :create, "cookbook_file[#{pkg_file}]"
end

package "mysql_enterprise_backup" do
  source "/tmp/foo.txt"
  action :nothing
  notifies :delete, "file[#{pkg_file}]", :immediately
end
