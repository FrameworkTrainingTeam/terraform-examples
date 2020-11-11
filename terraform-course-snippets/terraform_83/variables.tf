variable "environment" {
  description = "Stack environment, e.g. dev, prod"
  type        = string
  default     = "prod"
}

variable "project" {
  description = "Project that stack is created for"
  type        = string
  default     = "demo"
}

variable "tags" {
  description = "Tags to add to resources created"
  type        = map(string)
  default     = {}
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

variable "create_password" {
  description = "Do you want to create a password, true/false?"
  type        = bool
  default     = true
}

######################################################################
# AZURE PROVIDER
######################################################################
variable "azure_sp_client_id" {
  description = "(Optional) The Client ID which should be used. This can also be sourced from the ARM_CLIENT_ID Environment Variable."
  type        = string
}

variable "azure_sp_client_secret" {
  description = "(Optional) The Client Secret which should be used. This can also be sourced from the ARM_CLIENT_SECRET Environment Variable."
  type        = string
}

variable "azure_tenant_id" {
  description = "(Optional) The Tenant ID which should be used. This can also be sourced from the ARM_TENANT_ID Environment Variable."
  type        = string
}

variable "azure_subscription_id" {
  description = "(Optional) The Subscription ID which should be used. This can also be sourced from the ARM_SUBSCRIPTION_ID Environment Variable."
  type        = string
}


