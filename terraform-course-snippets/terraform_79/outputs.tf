output "password_value" {
  description = "Value of random password created"
  value       = length(module.create_password) > 0 ? module.create_password[0].password : ""
}

output "password_value_list" {
  description = "Value of random password created"
  value       = module.create_password.*.password
}

output "resource_group_name" {
  description = "Value of resource group created"
  value       = module.resource_group.resource_group_name
}