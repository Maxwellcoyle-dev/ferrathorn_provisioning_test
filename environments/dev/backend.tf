terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "ferrathorn"

    workspaces {
      prefix = "ferrathorn-crm-"
    }
  }
}
