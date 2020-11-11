terraform {
  backend "remote" {
    organization = "frameworktraining"

    workspaces {
      prefix = "tftraining-"
    }
  }
}

# terraform {
#   backend "azurerm" {
#     storage_account_name = "frameworktrainingstorage"
#     container_name       = "tfstate"
#     key                  = "training.tfstate"

#     # export ARM_ACCESS_KEY="secretaccesskey"
#     # access_key = "secretaccesskey"
#   }
# }