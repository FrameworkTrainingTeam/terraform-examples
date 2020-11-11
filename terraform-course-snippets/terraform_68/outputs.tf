output "password_value" {
  description = "Value of random password created"
  value       = module.create_password.password
  sensitive   = true
}

