# Azure Resource Group

## Usage

This module is optimized to work with the [Claranet terraform-wrapper](https://github.com/claranet/terraform-wrapper) tool
which set some terraform variables in the environment needed by this module.
More details about variables set by the `terraform-wrapper` available in the [documentation](https://github.com/claranet/terraform-wrapper#environment).

```hcl
module "rg" {
  source  = "../"
  location    = var.location
  rg_name     = var.rg_name
  lock_level  = var.lock_level #Possible values are Empty (no lock), `CanNotDelete` and `ReadOnly`.
  tags        = var.tags
}
```

## Resources

| Name | Type |
|------|------|
| [azurerm_management_lock.resource_group_level_lock](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_lock) | resource |
| [azurerm_resource_group.main_rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurecaf_name.rg](https://registry.terraform.io/providers/aztfmod/azurecaf/latest/docs/data-sources/name) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| rg\_name | Resource group name/account used in naming. | `string` | n/a | yes |
| tags     | Extra tags to add. | `map(string)` | `{}` | no |
| location | Azure region to use. | `string` | n/a | yes |
| lock\_level | Specifies the Level to be used for this RG Lock. Possible values are Empty (no lock), `CanNotDelete` and `ReadOnly`. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| resource\_group\_id | Resource group generated id |
| resource\_group\_location | Resource group location (region) |
| resource\_group\_name | Resource group name |
<!-- END_TF_DOCS -->
## Related documentation

Azure Lock management documentation: [docs.microsoft.com/en-us/azure/azure-resource-manager/management/lock-resources](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/lock-resources?tabs=json)
