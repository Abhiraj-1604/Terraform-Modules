module "resource_group" {
  source = "github.com/Abhiraj-1604/Terraform-Modules//modules/resource_group"
}

module "vnet" {
  source     = "github.com/Abhiraj-1604/Terraform-Modules//modules/vnet"
  depends_on = [module.resource_group]
}

module "subnet" {
  source     = "github.com/Abhiraj-1604/Terraform-Modules//modules/subnet"
  depends_on = [module.vnet]
}
