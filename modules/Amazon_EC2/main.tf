resource "aws_instance" "ec2_server" {
  # intance
  ami = var.ec2_ami
  instance_type = var.ec2_instance_type

  # ssh key
  key_name = aws_key_pair.ec2_ssh_keypair.key_name

  # network
  tags = {
    Name = var.ec2_name
    "${var.ec2_tag_key}" = "${var.ec2_tag_value}"
  }
  subnet_id = var.ec2_subnet_id
  security_groups = var.ec2_security_group

  # AWS EBS
  root_block_device {
    volume_size = var.ec2_ebs_volume_size
    volume_type = var.ec2_ebs_volume_type
  }
}

resource "aws_key_pair" "ec2_ssh_keypair" {
  key_name = "ec2_ssh_keypair"
  public_key = file(var.ec2_ssh_public_key_file_path)
}