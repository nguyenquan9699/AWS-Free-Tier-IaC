variable "codecommit_repository_name" {
  type = string
}

variable "codecommit_description" {
  type = string
  default = ""
}

variable "codecommit_tag_key" {
  type        = string
  default     = "key"
  description = "Default value is key"
}

variable "codecommit_tag_value" {
  type        = string
  default     = "value"
  description = "Default value is value"
}