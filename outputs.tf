output "virtual_hub_connection_id" {
  description = "The ID of the virtual hub connection."
  value       = azurerm_virtual_hub_connection.this.id
}

output "virtual_hub_connection_name" {
  description = "The name of the virtual hub connection."
  value       = azurerm_virtual_hub_connection.this.name
}

