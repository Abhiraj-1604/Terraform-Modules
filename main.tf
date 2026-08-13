module "resource_group" {
  source = "github.com/Abhiraj-1604/Terraform-Modules//modules/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "vnet" {
  source = "github.com/Abhiraj-1604/Terraform-Modules//modules/vnet"

  vnet_name           = var.vnet_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  address_space       = var.address_space
  tags                = var.tags
}

module "subnet" {
  source = "github.com/Abhiraj-1604/Terraform-Modules//modules/subnet"

  subnet_name          = var.subnet_name
  resource_group_name  = module.resource_group.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes
}
