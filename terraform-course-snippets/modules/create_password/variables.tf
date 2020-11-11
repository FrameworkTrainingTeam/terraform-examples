variable "length" {
  description = "(Required) The length of the string desired"
  type        = number
  default     = 10
}

variable "upper" {
  description = "(Optional) (default true) Include uppercase alphabet characters in random string."
  type        = bool
  default     = true
}

variable "min_upper" {
  description = "(Optional) (default 0) Minimum number of uppercase alphabet characters in random string."
  type        = number
  default     = 0
}

variable "lower" {
  description = "(Optional) (default true) Include lowercase alphabet characters in random string."
  type        = bool
  default     = true
}

variable "min_lower" {
  description = " (Optional) (default 0) Minimum number of lowercase alphabet characters in random string."
  type        = number
  default     = 0
}

variable "number" {
  description = "(Optional) (default true) Include numeric characters in random string."
  type        = bool
  default     = true
}

variable "min_numeric" {
  description = "(Optional) (default 0) Minimum number of numeric characters in random string."
  type        = number
  default     = 0
}

variable "special" {
  description = "(Optional) (default true) Include special characters in random string. These are !@#$%&*()-_=+[]{}<>:?"
  type        = bool
  default     = true
}

variable "min_special" {
  description = "(Optional) (default 0) Minimum number of special characters in random string."
  type        = number
  default     = 0
}

variable "override_special" {
  description = "(Optional) Supply your own list of special characters to use for string generation. This overrides the default character list in the special argument. The special argument must still be set to true for any overwritten characters to be used in generation."
  default     = "~!$"
}

variable "keepers" {
  description = "(Optional) Arbitrary map of values that, when changed, will trigger a new id to be generated. See the main provider documentation for more information."
  default     = {}
}

