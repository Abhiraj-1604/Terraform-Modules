# Resource Group
variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region (e.g. eastus, westeurope)"
  type        = string
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}

# Virtual Networks — map of VNET name to its config
# Each key becomes the VNET name; each value holds its address space
variable "vnets" {
  description = "Map of VNETs to create. Key = VNET name, value = { address_space }"
  type = map(object({
    address_space = list(string)
  }))
  default = {}
}

# Subnets — map of subnet name to its config
# Each key becomes the subnet name; each value holds its CIDR and parent VNET
variable "subnets" {
  description = "Map of subnets to create. Key = subnet name, value = { virtual_network_name, address_prefixes }"
  type = map(object({
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
  default = {}
}
