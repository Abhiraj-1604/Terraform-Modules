variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group containing the parent VNET"
  type        = string
}

variable "virtual_network_name" {
  description = "Name of the parent Virtual Network"
  type        = string
}

variable "address_prefixes" {
  description = "List of CIDR blocks for the Subnet address prefix"
  type        = list(string)
}
