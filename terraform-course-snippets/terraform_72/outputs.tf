output "password_value" {
  description = "Value of random password created"
  value       = length(module.create_password) > 0 ? module.create_password[0].password : ""
}

output "password_value_list" {
  description = "Value of random password created"
  value       = module.create_password.*.password
}