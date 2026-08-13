resource_group_name = "my-rg"
location            = "eastus"
tags                = { env = "dev", owner = "abhiraj" }

vnet_name     = "my-vnet"
address_space = ["10.0.0.0/16"]

subnets = {
  web = {
    virtual_network_name = "my-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  db = {
    virtual_network_name = "my-vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
  mgmt = {
    virtual_network_name = "my-vnet"
    address_prefixes     = ["10.0.3.0/24"]
  }
}
