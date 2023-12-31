variable "ec2_ami" {
  type = string
  default = "ami-0fa377108253bf620"
  description = "Default AMI for EC2 instance is Ubuntu 22.04 LTS"
}
variable "ec2_instance_type" {
  type = string
  default = "t2.micro"
  description = "Default instance type is t2.micro"
}
variable "ec2_name" {
  type = string
  default = "ec2 server"
}
variable "ec2_tag_key" {
  type = string
  default = "key"
}
variable "ec2_tag_value" {
  type = string
  default = "value"
}
variable "ec2_security_group" {
  type = set(string)
}
variable "ec2_subnet_id" {
  type = string
}
variable "ec2_ebs_volume_size" {
  type = number
  default = 8
  description = "size of EBS (GB)"
}
variable "ec2_ebs_volume_type" {
  type = string
  default = "gp3"
}
variable "ec2_ssh_public_key_file_path" {
  type = string
  default = "./ec2_ssh_key.pub"
}