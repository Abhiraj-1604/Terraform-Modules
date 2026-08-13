variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "my-rg"
}

variable "location" {
  description = "Azure region where the Resource Group will be created (e.g. eastus, westeurope)"
  type        = string
  default     = "eastus"
}

variable "tags" {
  description = "Map of tags to apply to the Resource Group"
  type        = map(string)
  default     = {}
}
