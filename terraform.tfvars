resource_group_name = "my-rg"
location            = "eastus"
tags                = { env = "dev", owner = "abhiraj" }

vnet_name     = "my-vnet"
address_space = ["10.0.0.0/16"]

subnets = {
  subnet-frontend = {
    virtual_network_name = "vnet-app"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet-backend = {
    virtual_network_name = "vnet-data"
    address_prefixes     = ["10.1.1.0/24"]
  }
}
