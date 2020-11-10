# terraform slide 31

variable "password_min_numeric" {}

resource "random_string" "password" {
  length      = 10
  min_numeric = var.password_min_numeric
}

output "password_min_numeric" {
  description = "Min numeric in password"
  value       = var.password_min_numeric
}

output "password_value" {
  description = "Value of password created"
  value       = random_string.password.result
  sensitive   = true
}

output "password_length" {
  description = "Length of password created"
  value       = random_string.password.length
}
