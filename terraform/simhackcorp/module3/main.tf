resource "opennebula_virtual_machine" "DDBBserver_SimHackCorp" {
  name        = "DDBBserver.SimHackCorp.lab"
  template_id = 62
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

resource "opennebula_virtual_machine" "Intranet_SimHackCorp" {
  name        = "Intranet.SimHackCorp.lab"
  template_id = 64
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

resource "opennebula_virtual_machine" "OnlineShop_SimHackCorp" {
  name        = "OnlineShop.SimHackCorp.lab"
  template_id = 63
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

resource "opennebula_virtual_machine" "Kali_SimHackCorp" {
  name        = "Kali.SimHackCorp.lab"
  template_id = 65
  group       = "Ciber00"
  permissions = "660"

  context = {
    USER_NAME  = "jgarcia"   # Opennebula Username
    GROUP_NAME = "Ciber00"  # Opennebula Group
  }
  nic {
    network_id      = 2
  }
}
