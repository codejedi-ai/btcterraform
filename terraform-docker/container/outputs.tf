

# // no count in output block
# // splat expression is like a for loop
# output "container-name" {
#   value = docker_container.nodered_container.name
#   description = "the name of the container"
# }
# output "ip-address" {
#   value = [for i in docker_container.nodered_container[*]: join(":", [i.ip_address],[i.ports[0]["external"]])]
#   description = "the IP address of the container"
#   //sensitive = true
# }

output "application_access" {
  value = { for x in docker_container.app_container[*] : x.name => join(":", [x.ip_address], x.ports[*]["external"]) }
}