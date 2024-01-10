resource "aws_codepipeline" "pipeline" {
  name = "pipeline"
  stage {
    name = "stage 1"
    action {
      name     = ""
      owner    = ""
      provider = ""
      version  = ""
      category = ""
    }
  }
  stage {
    name = "stage 2"
    action {
      name     = ""
      owner    = ""
      provider = ""
      version  = ""
      category = ""
    }
  }
  artifact_store {
    location = ""
    type     = ""
  }
  role_arn = ""
}