resource "opennebula_virtual_machine" "pfSense_SimHackCorp" {
  count       = length(lab_sets)
  name        = "Pfsense.SimHackCorp.lab_${count.index}"
  template_id = 59
  group       = var.lab_sets[count.index].group_name
  permissions = "660"

  context = {
    USER_NAME  = var.lab_sets[count.index].user_name
    GROUP_NAME = var.lab_sets[count.index].group_name
  }
  nic {
    network_id = var.lab_sets[count.index].network_id_wan
  }
  nic {
    network_id = var.lab_sets[count.index].network_id_lan
  }
  nic {
    network_id = var.lab_sets[count.index].network_id_dmz
  }
  nic {
    network_id = var.lab_sets[count.index].network_id_servers
  }
}

resource "opennebula_virtual_machine" "ADserver_SimHackCorp" {
  count       = length(var.lab_sets)
  name        = "ADserver.SimHackCorp.lab_${count.index}"
  template_id = 61
  group       = var.lab_sets[count.index].group_name
  permissions = "660"

  context = {
    USER_NAME  = var.lab_sets[count.index].user_name
    GROUP_NAME = var.lab_sets[count.index].group_name
  }
  nic {
    network_id = var.lab_sets[count.index].network_id_servers
  }
}

resource "opennebula_virtual_machine" "Wazuh_SimHackCorp" {
  count       = length(var.lab_sets)
  name        = "Wazuh.SimHackCorp.lab_${count.index}"
  template_id = 58
  group       = var.lab_sets[count.index].group_name
  permissions = "660"

  context = {
    USER_NAME  = var.lab_sets[count.index].user_name
    GROUP_NAME = var.lab_sets[count.index].group_name
  }
  nic {
    network_id = var.lab_sets[count.index].network_id_dmz
  }
}

resource "opennebula_virtual_machine" "Nessus_SimHackCorp" {
  count       = length(var.lab_sets)
  name        = "Nessus.SimHackCorp.lab_${count.index}"
  template_id = 60
  group       = var.lab_sets[count.index].group_name
  permissions = "660"

  context = {
    USER_NAME  = var.lab_sets[count.index].user_name
    GROUP_NAME = var.lab_sets[count.index].group_name
  }
  nic {
    network_id = var.lab_sets[count.index].network_id_servers
  }
}
