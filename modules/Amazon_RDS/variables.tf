variable "rds_instance_class" {
  type        = string
  default     = "db.t2.micro"
  description = "Default value is db.t2.micro"
}

variable "rds_allocated_storage" {
  type        = number
  default     = 20
  description = "Default value is 20 GB"
}

variable "rds_engine" {
  type        = string
  default     = "mysql"
  description = "Default value is mysql"
}

variable "rds_engine_version" {
  type        = string
  default     = "5.7"
  description = "Default value is 5.7"
}

variable "rds_username" {
  type        = string
  default     = "admin"
  description = "Default value is admin"
}

variable "rds_password" {
  type        = string
  default     = "password"
  description = "Default value is password"
}

variable "rds_db_name" {
  type        = string
  default     = "rds_db"
  description = "Default value is rds_db"
}

variable "rds_security_group_ids" {
  type = set(string)
}
variable "rds_subnet_group_name" {
  type = string
}

variable "rds_publicly" {
  type        = bool
  default     = false
  description = "Default value is false"
}

variable "rds_multi_az" {
  type        = bool
  default     = false
  description = "Default value is false"
}

variable "rds_tag_key" {
  type        = string
  default     = "key"
  description = "Default value is key"
}

variable "rds_tag_value" {
  type        = string
  default     = "value"
  description = "Default value is value"
}