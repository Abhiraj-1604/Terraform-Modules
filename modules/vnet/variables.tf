variable "vnet_name" {
  description = "Name of the Azure Virtual Network"
  type        = string
  default     = "my-vnet"
}

variable "resource_group_name" {
  description = "Name of the Resource Group where the VNET will be created"
  type        = string
  default     = "my-rg"
}

variable "location" {
  description = "Azure region where the VNET will be deployed (e.g. eastus, westeurope)"
  type        = string
  default     = "eastus"
}

variable "address_space" {
  description = "List of CIDR blocks for the Virtual Network address space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "tags" {
  description = "Map of tags to apply to the Virtual Network"
  type        = map(string)
  default     = {}
}
