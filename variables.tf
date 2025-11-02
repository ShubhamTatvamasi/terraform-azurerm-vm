variable "prefix" {
  default = "demo"
}

variable "location" {
  default = "Central India"
}

variable "vm_size" {
  default = "Standard_B1s"
}

variable "ssh_public_key" {
  default = "~/.ssh/id_ed25519.pub"
}

variable "availability_zone" {
  description = "The availability zone to deploy the VM in."
  type        = string
  default     = "2"
}

variable "subscription_id" {
  description = "The subscription ID to deploy resources into."
  type        = string
}

variable "allowed_ports" {
  type = map(number)
  default = {
    ssh   = 22
    http  = 80
    https = 443
  }
}
