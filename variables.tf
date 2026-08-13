# Resource Group
variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "my-rg"
}

variable "location" {
  description = "Azure region (e.g. eastus, westeurope)"
  type        = string
  default     = "eastus"
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
  default     = "my-vnet"
}

variable "address_space" {
  description = "CIDR block(s) for the Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

# Subnet
variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
  default     = "my-subnet"
}

variable "address_prefixes" {
  description = "CIDR prefix(es) for the Subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}
