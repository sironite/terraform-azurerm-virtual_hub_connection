module "virtual_hub_connection" {
  source  = "sironite/virtual_hub_connection/azurerm"
  version = "x.x.x"

  name                      = "example-vhub"
  virtual_hub_id            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.Network/virtualHubs/example-vhub"
  remote_virtual_network_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.Network/virtualNetworks/example-vnet"
  internet_security_enabled = true
}