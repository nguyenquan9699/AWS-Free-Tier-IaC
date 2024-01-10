module "IAC_aws_network" {
  source = "./modules/Amazon_Network"
}
module "myDynamoDB" {
  source = "./modules/Amazon_DynamoDB"
  dynamoDB_table_name = "demo_table"
  dynamoDB_key = "ID_"
  dynamoDB_key_attribute = {
    name = "ID_"
    type = "S"
  }
}