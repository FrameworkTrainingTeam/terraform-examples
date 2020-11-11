# terraform slide 68

module "create_password" {
  source = "../modules/create_password"

  length      = var.password_length
  min_numeric = var.password_min_numeric
}
