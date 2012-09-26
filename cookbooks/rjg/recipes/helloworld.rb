rightscale_marker :begin

log "Hello World"

log "The package that would be installed is #{node['rjg']['apache_package_name']}"

package node['rjg']['apache_package_name'] 

bash "fetch something" do
  environment ({
    'STORAGE_ACCOUNT_SECRET' => node['rjg']['aws_secret'],
    'STORAGE_ACCOUNT_ID' => node['rjg']['aws_id']
  })
  code <<-EOF
/opt/rightscale/sandbox/bin/ros_util get --cloud s3 --container #{node['rjg']['fetch_container']} --dest /tmp/ros_dest --source #{node['rjg']['fetch_prefix']} --latest
  EOF
end

rightscale_marker :end
