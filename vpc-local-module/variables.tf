variable "cidr_vpc" {
  description = "CIDR para VPC customizavel de modulo"
  type = string
}

variable "cidr_subnet" {
  description = "CIDR para Subnet customizavel de modulo"
  type = string
}

variable "environment" {
    description = "Ambiente onde está sendo deployado a estrutura"
    type = string
}