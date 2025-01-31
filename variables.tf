# variables.tf

variable "github_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub owner or organization"
  type        = string
}

variable "repository_name" {
  description = "Name of the GitHub repository to create"
  type        = string
  default     = "example-repo"
}

variable "repository_description" {
  description = "Description of the GitHub repository"
  type        = string
  default     = "This is an example repository created by Terraform"
}

variable "repository_visibility" {
  description = "Visibility of the GitHub repository"
  type        = string
  default     = "public"
}