terraform {
  required_providers {
    opennebula = {
      source = "OpenNebula/opennebula"
      version = "~> 1.4"
    }
  }
}
provider "opennebula" {
  endpoint  = "http://localhost:2633/RPC2"
  username  = "username"
  password  = "Your_Secure.Password"
}
