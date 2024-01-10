variable "cloud9_name" {
  type        = string
  default     = "ide"
  description = "Default value is ide"
}

variable "cloud9_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Default value is key"
}

variable "cloud9_image_id" {
  type = string
  default = "amazonlinux-1-x86_64"
  description = "Default value is amazonlinux-1-x86_64"
}

variable "cloud9_connection_type" {
  type = string
  default = "CONNECT_SSM"
  description = "Default value is CONNECT_SSM"
  validation {
    condition = var.cloud9_connection_type == "CONNECT_SSM" || var.cloud9_connection_type == "CONNECT_SSH"
    error_message = "connection type is not valie"
  }
}

variable "cloud9_description" {
  type = string
  default = "default description"
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