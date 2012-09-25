rightscale_marker :begin

log "Hello World"

log "The package that would be installed is #{node['rjg']['apache_package_name']}"

package node['rjg']['apache_package_name'] 

rightscale_marker :end
