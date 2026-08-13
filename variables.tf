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

# Virtual Network
variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "address_space" {
  description = "CIDR block(s) for the Virtual Network"
  type        = list(string)
}

# Subnet
variable "virtual_network_name" {
  description = "Name of the Virtual Network the Subnet belongs to (can differ from vnet_name if managing independently)"
  type        = string
}

variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
}

variable "address_prefixes" {
  description = "CIDR prefix(es) for the Subnet"
  type        = list(string)
}
