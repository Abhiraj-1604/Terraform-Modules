module "resource_group" {
  source = "github.com/Abhiraj-1604/Terraform-Modules//modules/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "vnet" {
  source     = "github.com/Abhiraj-1604/Terraform-Modules//modules/vnet"
  depends_on = [module.resource_group]

  vnet_name           = var.vnet_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
  tags                = var.tags
}

module "subnet" {
  source     = "github.com/Abhiraj-1604/Terraform-Modules//modules/subnet"
  depends_on = [module.vnet]

  subnet_name          = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.address_prefixes
}
