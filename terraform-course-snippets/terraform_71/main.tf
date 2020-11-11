# terraform slide 71

module "create_password" {
  source = "../modules/create_password"

  count = var.create_password ? 1 : 0

  length      = var.password_length
  min_numeric = var.password_min_numeric
}

