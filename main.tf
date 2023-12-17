module "custom_aws_network" {
  source = "./modules/Amazon_Network"
}
module "custom_aws_ec2" {
  source = "./modules/Amazon_EC2"
  ec2_subnet_id = module.custom_aws_network.aws_subnets_default_data.ids[0]
  ec2_security_group = [ module.custom_aws_network.aws_sg_allow_ssh.id ]
}