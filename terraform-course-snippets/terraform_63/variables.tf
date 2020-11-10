variable "environment" {
  type = string

  validation {
    condition     = can(regex("^dev", var.environment)) || can(regex("^prod", var.environment))
    error_message = "Environment must start with either dev or prod."
  }
}

variable "password_min_numeric" {
  description = "Min number of numberic chars in password"
  type        = number
  default     = 4

  validation {
    condition     = var.password_min_numeric > 3
    error_message = "Password_min_numeric does not satify minimum length."
  }
}
