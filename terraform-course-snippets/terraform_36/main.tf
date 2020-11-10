# terraform slide 36

variable "password_min_numeric" {
  description = "Min number of numberic chars in password"
  type        = number
  default     = 4
}

resource "random_string" "password" {
  length      = 10
  min_numeric = var.password_min_numeric
}

output "password_min_numeric_string" {
  description = "Value of password created"
  value       = "Including variable value ${var.password_min_numeric} in string"
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
