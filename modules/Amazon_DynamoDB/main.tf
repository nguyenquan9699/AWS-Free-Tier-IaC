resource "aws_dynamodb_table" "rds_instance" {
  name = var.dynamoDB_table_name
  hash_key = var.dynamoDB_key
  read_capacity = var.dynamoDB_max_read_capacity
  write_capacity = var.dynamoDB_max_write_capacity

  dynamic "attribute" {
    for_each = var.dynamoDB_attributes
    content {
      name = attribute.value.name
      type = attribute.value.type
    }
  }

  tags = {
    "${var.dynamoDB_tag_key}" = "${var.dynamoDB_tag_value}"
  }

  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      read_capacity, write_capacity, replica
    ]
  }
  
}