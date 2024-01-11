resource "aws_codecommit_repository" "repository" {
  repository_name = var.codecommit_repository_name
  description = var.codecommit_description
  tags = {
    "${var.codecommit_tag_key}" = "${var.codecommit_tag_value}"
  }
}
