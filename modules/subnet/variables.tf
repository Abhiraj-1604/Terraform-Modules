variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
  default     = "my-subnet"
}

variable "resource_group_name" {
  description = "Name of the Resource Group containing the parent VNET"
  type        = string
  default     = "my-rg"
}

variable "virtual_network_name" {
  description = "Name of the parent Virtual Network"
  type        = string
  default     = "my-vnet"
}

variable "address_prefixes" {
  description = "List of CIDR blocks for the Subnet address prefix"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}
