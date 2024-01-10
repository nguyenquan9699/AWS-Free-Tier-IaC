resource "aws_codebuild_project" "codebuild" {
  name = "codebuild"
  environment {
    type         = ""
    image        = ""
    compute_type = ""
  }
  source {
    type = ""
  }
  artifacts {
    type = ""
  }
  service_role = ""
}