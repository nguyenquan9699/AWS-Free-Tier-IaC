resource "aws_db_instance" "rds_instance" {
  instance_class = var.rds_instance_class
  engine = var.rds_engine
  engine_version = var.rds_engine_version

  username = var.rds_username
  password = var.rds_password
  db_name = var.rds_db_name

  allocated_storage = var.rds_allocated_storage

  publicly_accessible = var.rds_publicly
  multi_az = var.rds_multi_az
  
  tags = {
    "${var.rds_tag_key}" = "${var.rds_tag_value}"
  }
  
  db_subnet_group_name = var.rds_subnet_group_name
  vpc_security_group_ids = var.rds_security_group_ids

  lifecycle {
    create_before_destroy = true
    ignore_changes = [ 
      password,
      tags,
      publicly_accessible,
      multi_az
    ]
  }
  
}
