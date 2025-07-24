provider "aws" {
  region = "us-east-2"
}

resource "aws_security_group" "strapi_sg" {
  name        = "strapi_sg3"
  description = "Allow HTTP"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "strapi" {
  ami           = "ami-0c55b159cbfafe1f0" 
  instance_type = "t2.micro"
  key_name      = "key2"

  vpc_security_group_ids = [aws_security_group.strapi_sg.id]

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    amazon-linux-extras install docker -y
    service docker start
    usermod -a -G docker ec2-user
    docker pull shaishtap/strapi-app:latest
    docker run -d -p 80:1337 --name strapi shaishtap/strapi-app:latest > /home/ec2-user/strapi.log 2>&1
  EOF

  tags = {
    Name = "StrapiEC2"
  }
}