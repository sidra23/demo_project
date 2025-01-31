provider "github" {
  token = var.github_token
  owner = var.github_owner
}

variable "github_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub owner or organization"
  type        = string
}

resource "github_repository" "example" {
  name        = "example-repo"
  description = "This is an example repository created by Terraform"
  visibility  = "public"
  auto_init   = true
}

output "repository_url" {
  value = github_repository.example.html_url
}