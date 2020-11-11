# terraform slide 70

module "create_password" {
  source = "../modules/create_password"

  count = 2

  length      = var.password_length
  min_numeric = var.password_min_numeric
}

