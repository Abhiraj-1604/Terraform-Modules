module "resource_group" {
  source   = "./modules/resource_group"
  for_each = var.resource_groups

  resource_group_name = each.key
  location            = each.value.location
  tags                = var.tags
}

module "vnet" {
  source   = "./modules/vnet"
  for_each = var.vnets

  vnet_name           = each.key
  resource_group_name = each.value.resource_group_name
  location            = module.resource_group[each.value.resource_group_name].resource_group_location
  address_space       = each.value.address_space
  tags                = var.tags
}

module "subnet" {
  source   = "./modules/subnet"
  for_each = var.subnets

  subnet_name          = each.key
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}
