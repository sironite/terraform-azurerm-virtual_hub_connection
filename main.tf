resource "azurerm_virtual_hub_connection" "this" {
  name                      = var.virtual_hub_connection_name
  virtual_hub_id            = var.virtual_hub_id
  remote_virtual_network_id = var.remote_virtual_network_id
  internet_security_enabled = var.internet_security_enabled

  routing {
    associated_route_table_id = var.associated_route_table_id
    propagated_route_table {
      labels          = var.labels
      route_table_ids = var.route_table_ids
    }

    static_vnet_route {
      name                = var.static_vnet_route_name
      address_prefixes    = var.address_prefixes
      next_hop_ip_address = var.next_hop_ip_address
    }
  }
}