module "resource_group" {
  source = "github.com/Abhiraj-1604/Terraform-Modules//modules/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "vnet" {
  source   = "github.com/Abhiraj-1604/Terraform-Modules//modules/vnet"
  for_each = var.vnets

  vnet_name           = each.key
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  address_space       = each.value.address_space
  tags                = var.tags
}

module "subnet" {
  source   = "github.com/Abhiraj-1604/Terraform-Modules//modules/subnet"
  for_each = var.subnets

  subnet_name          = each.key
  resource_group_name  = module.resource_group.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}

