resource "aws_cloud9_environment_ec2" "ide" {
  name          = var.cloud9_name
  instance_type = var.cloud9_instance_type
  tags = {
    "${var.cloud9_tag_key}" = "${var.cloud9_tag_value}"
  }
}

