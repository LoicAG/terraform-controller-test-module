variable "gitlab_token" {}
variable "project_name" {}

provider "giitlab" {
  token    = "${var.gitlab_token}"
}

resource "gitlab_project" "test-project" {
  name = "${var.project_name}"
}
