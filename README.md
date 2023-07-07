<!-- BEGIN_TF_DOCS -->
 ## Connection for a Virtual Hub
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-virtual_hub_connection/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_hub_connection)

# Usage - Module

##Connection for a Virtual Hub

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

## Providers

| Name | Version |
|------|---------|
| azurerm | >=2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_hub_connection.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_hub_connection) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| remote\_virtual\_network\_id | The ID of the remote virtual network. | `string` | yes |
| virtual\_hub\_connection\_name | The name of the virtual hub connection. | `string` | yes |
| virtual\_hub\_id | The ID of the virtual hub. | `string` | yes |
| address\_prefixes | The address prefixes for the static VNet route. | `list(string)` | no |
| associated\_route\_table\_id | The ID of the associated route table. | `string` | no |
| internet\_security\_enabled | Whether or not internet security is enabled. | `bool` | no |
| labels | The labels for the propagated route table. | `list(string)` | no |
| next\_hop\_ip\_address | The next hop IP address for the static VNet route. | `string` | no |
| route\_table\_ids | The IDs of the propagated route tables. | `list(string)` | no |
| static\_vnet\_route\_name | The name of the static VNet route. | `string` | no |

## Outputs

| Name | Description |
|------|-------------|
| virtual\_hub\_connection\_id | The ID of the virtual hub connection. |
| virtual\_hub\_connection\_name | The name of the virtual hub connection. |

## Related documentation
<!-- END_TF_DOCS -->