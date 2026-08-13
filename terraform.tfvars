resource_group_name = "my-rg"
location            = "eastus"
tags                = { env = "dev", owner = "abhiraj" }

vnet_name           = "my-vnet"
address_space       = ["10.0.0.0/16"]

virtual_network_name = "my-vnet"
subnet_name          = "my-subnet"
address_prefixes     = ["10.0.1.0/24"]
