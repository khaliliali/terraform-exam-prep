terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.18.3"
    }
  }
}

provider "github" {
  token = "###"
}

# resource "github_repository" "example" {
#   name        = "terraform-repo"
#   visibility  = "private"

# }