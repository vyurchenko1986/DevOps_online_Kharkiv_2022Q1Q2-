# ---------------------------------------------------------------------------------------------------------------------
# VARIABLES
# ---------------------------------------------------------------------------------------------------------------------
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "stack" {
  type        = string
  description = "Name of the stack."
  default     = "petclinic"
}

variable "public_key" {
  type        = string
  description = "File path of public key."
  default     = "~/.ssh/deployer-key.pub"
}

variable "private_key" {
  type        = string
  description = "File path of private key."
  default     = "~/.ssh/deployer-key"
}
