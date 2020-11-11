# terraform slide 38

variable "password_min_numeric" {
  description = "Min number of numeric chars in password"
  type        = number
  default     = 4

  validation {
    condition     = var.password_min_numeric > 3
    error_message = "Password_min_numeric does not satify minimum length."
  }
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
