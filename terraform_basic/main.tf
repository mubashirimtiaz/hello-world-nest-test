terraform {
  required_providers {
    aws ={
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami = "ami-0ba9883b710b05ac6"
  instance_type = "t2.micro"
  tags = {
    Name = "MyFirstTerrformInstance"
    app = "server"
  }
}

resource "aws_instance" "app_server_2" {
  ami = "ami-0ba9883b710b05ac6"
  instance_type = "t2.micro"
  tags = {
    Name = "MyFirstTerrformInstance2"
    app = "server2"
  }
}
