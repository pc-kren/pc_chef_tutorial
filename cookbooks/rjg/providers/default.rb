action :go do
  log "Hey I went go.. With text_value of #{new_resource.name} #{new_resource.text_value}"
end

action :stop do
  log "Hey I went stop.. With text_value of #{new_resource.text_value}"
end
