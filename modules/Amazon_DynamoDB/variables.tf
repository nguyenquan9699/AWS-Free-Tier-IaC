variable "dynamoDB_table_name" {
  type        = string
  default     = "rds_db"
  description = "Default value is rds_db"
}

variable "dynamoDB_key" {
  type        = string
  default     = ""
  description = "DynamoDB primarykey is empty"
}

variable "dynamoDB_max_read_capacity" {
  type        = number
  default     = 10
  description = "Default DynamoDB max read capacity is 10"
}

variable "dynamoDB_max_write_capacity" {
  type        = number
  default     = 10
  description = "Default DynamoDB max write capacity is 10"
}

variable "dynamoDB_attributes" {
  type = object({
    name = string
    type = string
  })
  description = "Attributes of DynamoDB table"
}

variable "dynamoDB_tag_key" {
  type        = string
  default     = "key"
  description = "Default value is key"
}

variable "dynamoDB_tag_value" {
  type        = string
  default     = "value"
  description = "Default value is value"
}