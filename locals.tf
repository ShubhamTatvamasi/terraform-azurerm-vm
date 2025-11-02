locals {
  security_rules = {
    for name, port in var.allowed_ports :
    name => {
      priority = 1000 + index(keys(var.allowed_ports), name) + 1
      port     = port
    }
  }
}
