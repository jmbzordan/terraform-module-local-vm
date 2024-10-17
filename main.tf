terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 5.67.0"
    }
  }

  # https://developer.hashicorp.com/terraform/language/backend/s3
  # Declaração de um backend para armazenamento remoto do arquivo de state deste código

  backend "s3" {
    #Backend referencia para exercicio de remote state
    bucket =    "johnz-remote-state"    # Nome do bucket em bucket.tf que armazenara o arquivo de state   
    key    = "aws-vm-module/terraform.tfstate"  # Path do arquivo de state para o exemplo de criação da VM EC2 do curso
    region = "sa-east-1"
  }
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "joaozordan"
      managed-by = "terraform"
    }
  }
}
