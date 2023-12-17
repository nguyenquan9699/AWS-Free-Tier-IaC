output "aws_vpc_default_data" {
  value = data.aws_vpc.aws_vpc_default
}

output "aws_subnets_default_data" {
  value = data.aws_subnets.aws_subnets_default
}

output "aws_sg_allow_ssh" {
  value = aws_security_group.allow_ssh
}

output "aws_sg_allow_http" {
  value = aws_security_group.allow_http
}

output "aws_sg_allow_https" {
  value = aws_security_group.allow_https
}