resource "opennebula_virtual_machine" "DDBBserver_SimHackCorp" {
  count       = length(var.lab_sets)
  name        = "DDBBserver.SimHackCorp.lab_${count.index}"
  template_id = 62
  group       = var.lab_sets[count.index].group_name
  permissions = "600"

  context = {
    USER_NAME  = var.lab_sets[count.index].user_name
    GROUP_NAME = var.lab_sets[count.index].group_name
  }
  nic {
    network_id = var.lab_sets[count.index].network_id_servers
  }
}

resource "opennebula_virtual_machine" "OnlineShop_SimHackCorp" {
  count       = length(var.lab_sets)
  name        = "OnlineShop.SimHackCorp.lab_${count.index}"
  template_id = 63
  group       = var.lab_sets[count.index].group_name
  permissions = "600"

  context = {
    USER_NAME  = var.lab_sets[count.index].user_name
    GROUP_NAME = var.lab_sets[count.index].group_name
  }
  nic {
    network_id = var.lab_sets[count.index].network_id_dmz
  }
}

resource "opennebula_virtual_machine" "Intranet_SimHackCorp" {
  count       = length(var.lab_sets)
  name        = "Intranet.SimHackCorp.lab_${count.index}"
  template_id = 64
  group       = var.lab_sets[count.index].group_name
  permissions = "600"

  context = {
    USER_NAME  = var.lab_sets[count.index].user_name
    GROUP_NAME = var.lab_sets[count.index].group_name
  }
  nic {
    network_id = var.lab_sets[count.index].network_id_dmz
  }
}

resource "opennebula_virtual_machine" "Kali_SimHackCorp" {
  count       = length(var.lab_sets)
  name        = "Kali.SimHackCorp.lab_${count.index}"
  template_id = 65
  group       = var.lab_sets[count.index].group_name
  permissions = "600"

  context = {
    USER_NAME  = var.lab_sets[count.index].user_name
    GROUP_NAME = var.lab_sets[count.index].group_name
  }
  nic {
    network_id = var.lab_sets[count.index].network_id_otherwan
  }
}