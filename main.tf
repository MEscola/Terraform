terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
  access_key = "AKIAVRJCJP4YOTUFALO6"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  key_name = "minha-chave"

  tags = {
    Name = "Estudo"
  }
}

