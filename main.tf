terraform {
  required_version = ">= 0.12"

  required_providers {
    tls      = ">= 2.1"
    template = ">= 2.1"
    random   = ">= 2.2"
    null     = ">= 2.1"
  }
}

locals {
  files     = "${path.module}/files"
  templates = "${path.module}/templates"
  scripts   = "${path.module}/scripts"
}

module tags {
  source  = "4ops/tags/null"
  version = "1.0.0"
  name    = var.name
  tags    = var.tags
}
