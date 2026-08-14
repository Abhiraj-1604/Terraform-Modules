# backend.hcl — copy this file, fill in your values, and DO NOT commit it
# The actual backend.hcl is gitignored; this is just a reference template

resource_group_name  = "rg-bsda-prod"
storage_account_name = "bsdaprodsa"
container_name       = "st-tfstate"
key                  = "azure-infra/terraform.tfstate"
