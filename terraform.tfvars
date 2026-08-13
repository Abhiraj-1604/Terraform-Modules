tags = { env = "dev", owner = "abhiraj", managed_by = "terraform" }

resource_groups = {
  rg-app = {
    location = "eastus"
  }
  rg-data = {
    location = "eastus"
  }
}

vnets = {
  vnet-app = {
    address_space       = ["10.0.0.0/16"]
    resource_group_name = "rg-app"
  }
  vnet-data = {
    address_space       = ["10.1.0.0/16"]
    resource_group_name = "rg-data"
  }
}

subnets = {
  subnet-frontend = {
    virtual_network_name = "vnet-app"
    address_prefixes     = ["10.0.1.0/24"]
    resource_group_name  = "rg-app"
  }
  subnet-backend = {
    virtual_network_name = "vnet-data"
    address_prefixes     = ["10.1.1.0/24"]
    resource_group_name  = "rg-data"
  }
}
