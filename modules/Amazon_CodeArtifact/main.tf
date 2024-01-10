resource "aws_codeartifact_domain" "artifact_domain" {
  domain = "artifact_domain"
}

resource "aws_codeartifact_repository" "artifact_repos" {
  domain     = aws_codeartifact_domain.artifact_domain.domain
  repository = "artifact_repos"
}