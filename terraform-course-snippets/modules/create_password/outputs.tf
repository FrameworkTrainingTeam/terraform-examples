output "password" {
  description = "Random password generated"
  value       = random_password.password.result
  sensitive   = true
}