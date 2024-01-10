variable "cloud9_name" {
  type        = string
  default     = "ide"
  description = "Default value is ide"
}

variable "cloud9_instance_type" {
  type        = string
  default     = "t4g.small"
  description = "Default value is key"
}

variable "cloud9_tag_key" {
  type        = string
  default     = "key"
  description = "Default value is key"
}

variable "cloud9_tag_value" {
  type        = string
  default     = "value"
  description = "Default value is value"
}