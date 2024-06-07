variable "lab_sets" {
  description = "List of labs"
  type = list(object({
    user_name         = string
    group_name        = string
    network_id_wan    = string
    network_id_lan    = string
    network_id_dmz    = string
    network_id_servers = string
  }))
}