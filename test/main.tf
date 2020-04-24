terraform {
  required_version = ">= 0.12"
}

# --- Main

module mymodule {
  source = "../"
  name   = var.name
  tags   = var.tags
}
