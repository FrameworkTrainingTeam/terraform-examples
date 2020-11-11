# terraform slide 79

locals {
  prefix = "${var.environment}-${var.project}"

  tags = merge(
    var.tags,
    {
      "environment" = var.environment
      "project"     = var.project
    },
  )
}

module "create_password" {
  source = "../modules/create_password"

  count = var.create_password ? 1 : 0

  length      = var.password_length
  min_numeric = var.password_min_numeric
}

module "resource_group" {
  source = "../modules/azure_resource_group"

  name = "${local.prefix}-rg"
  tags = local.tags
}

data "azurerm_resource_group" "existing_resource_group" {
  name = "demo-rg"
}

output "existing_resource_group_location" {
  description = "Location of existing resource group"
  value       = data.azurerm_resource_group.existing_resource_group.location
}

data "terraform_remote_state" "existing_state_file" {
  backend = "azurerm"
  config = {
    storage_account_name = "frameworktrainingstorage"
    container_name       = "tfstate"
    key                  = "training.tfstateenv:${var.environment}"

    # export ARM_ACCESS_KEY="secretaccesskey"
    # access_key = "secretaccesskey"
  }
}

output "existing_state_file_password" {
  description = "Password value in existing state file"
  value       = data.terraform_remote_state.existing_state_file.outputs.password_value
}

