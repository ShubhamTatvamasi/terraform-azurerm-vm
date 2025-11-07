variable "prefix" {
  description = "Prefix for all resources."
  type        = string
  default     = "demo"
}

variable "location" {
  description = "The Azure region to deploy resources into."
  type        = string
  default     = "Central India"
}

variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
  default     = "Standard_B2ats_v2"
}

variable "ssh_public_key" {
  description = "Path to the SSH public key."
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
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
  description = "Map of allowed ports for network security group."
  type        = map(number)
  default = {
    ssh   = 22
    http  = 80
    https = 443
  }
}
