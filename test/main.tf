terraform {
  required_version = ">= 0.12.19"
}

# --- Main

module mymodule {
  source = "../"
  name   = var.name
  env    = var.env
}
