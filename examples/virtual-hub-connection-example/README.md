# Terraform module | AzureRM - Connection for a Virtual Hub

This Terraform module is designed to create a Connection for a Virtual Hub for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`azurerm_virtual_hub_connection`

```hcl
module "virtual_hub_connection" {
  source  = "sironite/virtual_hub_connection/azurerm"
  version = "x.x.x"

  name                      = "example-vhub"
  virtual_hub_id            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.Network/virtualHubs/example-vhub"
  remote_virtual_network_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.Network/virtualNetworks/example-vnet"
  internet_security_enabled = true
}

```

## Authors

The module is maintained by [Sironite](https://github.com/sironite)

## Documentation

> product: https://azure.microsoft.com/en-us/
> 
> Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest
> 
> Documentation: https://learn.microsoft.com/en-us/azure/?product=popular
