resource "aws_dynamodb_table" "rds_instance" {
  name = var.dynamoDB_table_name
  billing_mode = var.dynamoDB_billing_mode
  
  read_capacity = var.dynamoDB_max_read_capacity
  write_capacity = var.dynamoDB_max_write_capacity

  hash_key = var.dynamoDB_key
  attribute {
    name = var.dynamoDB_key_attribute.name
    type = var.dynamoDB_key_attribute.type
  }

  tags = {
    "${var.dynamoDB_tag_key}" = "${var.dynamoDB_tag_value}"
  }

  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      read_capacity, write_capacity
    ]
  }
  
}