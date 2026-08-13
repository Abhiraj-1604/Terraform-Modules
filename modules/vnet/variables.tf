variable "vnet_name" {
  description = "Name of the Azure Virtual Network"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group where the VNET will be created"
  type        = string
}

variable "location" {
  description = "Azure region where the VNET will be deployed (e.g. eastus, westeurope)"
  type        = string
}

variable "address_space" {
  description = "List of CIDR blocks for the Virtual Network address space"
  type        = list(string)
}

variable "tags" {
  description = "Map of tags to apply to the Virtual Network"
  type        = map(string)
  default     = {}
}
