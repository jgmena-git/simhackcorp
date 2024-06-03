resource "opennebula_virtual_machine" "pfSense_SimHackCorp" {
  name        = "Pfsense.SimHackCorp.lab"
  template_id = 59
  group       = "Ciber00"
  permissions = "660"

  context = {
    USER_NAME  = "jgarcia"   # Opennebula Username
    GROUP_NAME = "Ciber00"  # Opennebula Group
  }
  nic {
    network_id      = 93
  }
    nic {
    network_id      = 244
  }
    nic {
    network_id      = 245
  }
    nic {
    network_id      = 248
  }
}

resource "opennebula_virtual_machine" "ADserver_SimHackCorp" {
  name        = "ADserver.SimHackCorp.lab"
  template_id = 61
  group       = "Ciber00"
  permissions = "660"

  context = {
    USER_NAME  = "jgarcia"   # Opennebula Username
    GROUP_NAME = "Ciber00"  # Opennebula Group
  }
  nic {
    network_id      = 248
  }
}

resource "opennebula_virtual_machine" "Wazuh_SimHackCorp" {
  name        = "Wazuh.SimHackCorp.lab"
  template_id = 58
  group       = "Ciber00"
  permissions = "660"

  context = {
    USER_NAME  = "jgarcia"   # Opennebula Username
    GROUP_NAME = "Ciber00"  # Opennebula Group
  }
  nic {
    network_id      = 245
  }
}

resource "opennebula_virtual_machine" "Nessus_SimHackCorp" {
  name        = "Nessus.SimHackCorp.lab"
  template_id = 60
  group       = "Ciber00"
  permissions = "660"

  context = {
    USER_NAME  = "jgarcia"   # Opennebula Username
    GROUP_NAME = "Ciber00"  # Opennebula Group
  }
  nic {
    network_id      = 248
  }
}
