# Shared tags
variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}

# Resource Groups — map of RG name to its config
# Key = RG name, value = { location }
variable "resource_groups" {
  description = "Map of Resource Groups to create. Key = RG name, value = { location }"
  type = map(object({
    location = string
  }))
  default = {}
}

# Virtual Networks — map of VNET name to its config
# Key = VNET name, value = { address_space, resource_group_name }
variable "vnets" {
  description = "Map of VNETs to create. Key = VNET name, value = { address_space, resource_group_name }"
  type = map(object({
    address_space       = list(string)
    resource_group_name = string
  }))
  default = {}
}

# Subnets — map of subnet name to its config
# Key = subnet name, value = { virtual_network_name, address_prefixes, resource_group_name }
variable "subnets" {
  description = "Map of subnets to create. Key = subnet name, value = { virtual_network_name, address_prefixes, resource_group_name }"
  type = map(object({
    virtual_network_name = string
    address_prefixes     = list(string)
    resource_group_name  = string
  }))
  default = {}
}
