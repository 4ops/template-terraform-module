# --- Common settings

variable name {
  type    = string
  default = "mymodule"

  description = "Module name override"
}

variable env {
  type = string

  description = "Required: environment name"
}
