module "vpc" {
  source = "./vpc-local-module"

  # Define valores para as variáveis do módulo
  cidr_vpc = "10.0.0.0/16"
  cidr_subnet = "10.0.1.0/24"
  environment = "dev"
}
