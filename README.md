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
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| cmk\_arn | The ARN of the KMS CMK used for the backup vaults | `string` | `""` | no |
| create\_iam\_role | Determins if IAM role and policies are created or not | `bool` | `true` | no |
| env\_type | n/a | `string` | n/a | yes |
| name | n/a | `string` | n/a | yes |
| region | n/a | `string` | n/a | yes |
| sns\_topic\_arn | SNS ARN | `string` | `""` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


# pre-commit hook

this repo is using pre-commit hook to know more [click here](https://github.com/antonbabenko/pre-commit-terraform)
to manually trigger use this command

```
pre-commit install
pre-commit run --all-files
```
