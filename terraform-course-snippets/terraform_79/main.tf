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