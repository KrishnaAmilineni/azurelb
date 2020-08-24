# Azure LB

## Usage
Module compatible with Terraform `0.12`
```hcl

module "lb" {
  source = "git::git@git.signintra.com:dct/azure/terraform-azurerm-lb.git?ref=x.x.x"

  client_name         = var.client_name
  environment         = var.environment
  location            = var.location
  location_short      = var.location_short
  resource_group_name = var.resource_group_name
  stack               = var.stack

  allocate_public_ip = true
  enable_nat         = true
}

```


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| azurerm | >= 1.36.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| allocate\_public\_ip | True to allocate a Public IP to the Load Balancer. | `bool` | `false` | no |
| enable\_nat | True to enable NAT through Load Balancer outbound rules. | `bool` | `false` | no |
| ip\_custom\_name | Name of the Public IP address, generated if not set. | `string` | `""` | no |
| lb\_frontend\_ip\_configurations | `frontend_ip_configuration` blocks as documented here: https://www.terraform.io/docs/providers/azurerm/r/lb.html#frontend_ip_configuration | `map(any)` | `{}` | no |
| lb\_name | Name of the Load Balancer, generated if not set. | `string` | `""` | no |
| location | Azure location. | `string` | n/a | yes |
| name\_prefix | Optional prefix for the generated name | `string` | `""` | no |
| nat\_allocated\_outbound\_ports | Number of allocated outbound ports for NAT. | `number` | `1024` | no |
| nat\_protocol | Transport protocol to use for NAT. | `string` | `"All"` | no |
| public\_ip\_allocation\_method | Allocation method for the Public IP address, can be `Static`, `Dynamic`. | `string` | `"Static"` | no |
| public\_ip\_sku | SKU name for the Public IP address, can be `Basic` or `Standard`. | `string` | `"Standard"` | no |
| resource\_group\_name | Resource group name | `string` | n/a | yes |
| sku\_name | The Name of the SKU used for this Load Balancer. Possible values are "Basic" and "Standard". | `string` | `"Standard"` | no |
| tags | tags resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| backend\_address\_pool\_id | Id of the associated default backend address pool |
| backend\_address\_pool\_ip\_configurations | IP configurations of the associated default backend address pool |
| backend\_address\_pool\_load\_balancing\_rules | Load balancing rules of the associated default backend address pool |
| backend\_address\_pool\_name | Name of the associated default backend address pool |
| lb\_id | Id of the Load Balancer |
| lb\_name | Name of the Load Balancer |
| lb\_private\_ip\_address | Private IP address of the Load Balancer |
| lb\_private\_ip\_addresses | Private IP addresses of the Load Balancer |
| outbound\_rule\_allocated\_outbound\_ports | Number of allocated oubound ports of the default outbound rule if any |
| outbound\_rule\_id | Id of the default outbound rule if any |
| outbound\_rule\_name | Name of the default outbound rule if any |
| pubip\_domain\_name\_label | Domain name label of the Public IP address if any |
| pubip\_fqdn | FQDN of the Public IP address if any |
| pubip\_id | Id of the Public IP address if any |
| pubip\_ip\_address | IP address of the Public IP address if any |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


# pre-commit hook

this repo is using pre-commit hook to know more [click here](https://github.com/antonbabenko/pre-commit-terraform)
to manually trigger use this command

```
pre-commit install
pre-commit run --all-files
```
