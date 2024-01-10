resource "aws_cloud9_environment_ec2" "ide" {
  name          = var.cloud9_name
  instance_type = var.cloud9_instance_type
  description = var.cloud9_description
  tags = {
    "${var.cloud9_tag_key}" = "${var.cloud9_tag_value}"
  }
  image_id = var.cloud9_image_id
  connection_type = var.cloud9_connection_type
}

