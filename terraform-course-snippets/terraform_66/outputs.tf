output "project_name" {
  value = local.project
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