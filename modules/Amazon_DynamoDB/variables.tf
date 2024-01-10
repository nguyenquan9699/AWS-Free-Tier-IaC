variable "dynamoDB_table_name" {
  type = string
  default = "dynamoDB"
  description = "Default value is dynamoDB"
}

variable "dynamoDB_billing_mode" {
  type = string
  default = "PROVISIONED"
  validation {
    condition = var.dynamoDB_billing_mode == "PROVISIONED" || var.dynamoDB_billing_mode == "PAY_PER_REQUEST"
    error_message = "Not a valid billing mode"
  }
}

variable "dynamoDB_key" {
  type = string
  default = ""
  description = "DynamoDB primarykey is empty"
}

variable "dynamoDB_max_read_capacity" {
  type = number
  default = 10
  description = "Default DynamoDB max read capacity is 10"
}

variable "dynamoDB_max_write_capacity" {
  type = number
  default = 10
  description = "Default DynamoDB max write capacity is 10"
}

variable "dynamoDB_key_attribute" {
  type = object({
    name = string
    type = string
  })
  validation {
    condition = var.dynamoDB_key_attribute.type == "S" || var.dynamoDB_key_attribute.type == "N" || var.dynamoDB_key_attribute.type == "B"
    error_message = "Not a valid type"
  }
  description = "Attributes of DynamoDB table. S is String, N is Number, B is binary"
}

variable "dynamoDB_tag_key" {
  type = string
  default = "key"
  description = "Default value is key"
}

variable "dynamoDB_tag_value" {
  type = string
  default = "value"
  description = "Default value is value"
}