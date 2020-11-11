variable "environment" {
  description = "Stack environment, e.g. dev, prod"
  type        = string
  default     = "prod"
}

variable "password_length" {
  description = "Length of password to create"
  type        = number
  default     = 10
}

variable "password_min_numeric" {
  description = "Min number of numeric chars in password"
  type        = number
  default     = 2

  validation {
    condition     = var.password_min_numeric > 1
    error_message = "Password_min_numeric does not satify minimum length."
  }
}
