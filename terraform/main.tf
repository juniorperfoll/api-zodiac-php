provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "zodiac_api" {
  ami           = "ami-0a7d80731ae1b2435" # Ubuntu 22.04 us-east-1
  instance_type = "t2.micro"
  key_name      = var.key_name

  tags = {
    Name = "ZodiacAPI"
  }

  vpc_security_group_ids = [aws_security_group.zodiac_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              apt update
              apt install docker.io -y
              apt install php-cli -y
              EOF
}

resource "aws_security_group" "zodiac_sg" {
  name        = "zodiac-sg"
  description = "Permitir acesso API Zodiac"

  ingress {
    description      = "Permitir SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
  }

  ingress {
    description      = "Permitir API porta 8000"
    from_port        = 8000
    to_port          = 8000
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
  }

  egress {
    description      = "Permitir trafego saida"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
  }
}
