# terraform slide 28

resource "random_string" "password" {
  length      = 10
  min_numeric = 4
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