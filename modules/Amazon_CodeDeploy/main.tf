
resource "aws_codedeploy_deployment_group" "codedeploy_group" {
  app_name              = ""
  deployment_group_name = "codedeploy_group"
  service_role_arn      = ""
}

resource "aws_codedeploy_deployment_config" "codedeploy_config" {
  deployment_config_name = "codedeploy_config"
}

resource "aws_codedeploy_app" "codedeplot_app" {
  name = "codedeplot_app"
}