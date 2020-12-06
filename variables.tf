variable "name" {
  type = string
  description = "Name for the workspace"
}

variable "organization_id" {
  type = string
  description = "ID of the organization hosting the workspace"
}

variable "terraform_version" {
  type = string
  description = "Terraform version used by the workspace"
  default = "0.14.0"
}

variable "vcs_repo_identifier" {
  type = string
  description = "Repo identifier used by the workspace"
}

variable "vcs_repo_branch" {
  type = string
  description = "Default repository branch used by the workspace"
  default = "main"
}

variable "oauth_token_id" {
  type = string
  description = "OAuth token used to communicate with the VCS Repo"
}

variable "variables" {
  type = map(object({
    value = string
    description = string
    category = string
    hcl = bool
  }))
  description = "Map of variables to set on the workspace, see https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable"
}