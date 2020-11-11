# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string
# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password

resource "random_password" "password" {
  length           = var.length
  upper            = var.upper
  min_upper        = var.min_upper
  lower            = var.lower
  min_lower        = var.min_lower
  number           = var.number
  min_numeric      = var.min_numeric
  special          = var.special
  min_special      = var.min_special
  override_special = var.override_special
  keepers          = var.keepers
}
