terraform {
  backend "azurerm" {
    resource_group_name  = "cloud-reftoolbox-rg-tfstate"
    storage_account_name = "cloud0cecd6saweu"
    container_name       = "veeam-poc-p2"
    key                  = "terraform-part2.tfstate"
    subscription_id      = "24e1fa96-1741-4ab7-9ce1-578b9a605e5d"
  }
}

module "azure_lb" {
  source                  = "../"
  subscription_id         = local.subscription_id
  resource_group_location = local.location
  location_code           = local.location_code
  client_name             = var.client_name
  environment             = var.environment
  location                = var.location
  location_short          = var.location_short
  resource_group_name     = var.resource_group_name
  stack                   = var.stack

  allocate_public_ip = true
  enable_nat         = true
}
