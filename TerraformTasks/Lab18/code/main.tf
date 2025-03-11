provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = { Name = "main-vpc" }
}

resource "aws_subnet" "subnets" {
  for_each = {
    public  = { 
        cidr = "10.0.0.0/24"
        az = "us-east-1a" 
        }
    private = {
        cidr = "10.0.1.0/24"
        az = "us-east-1b" 
        }
  }

  vpc_id                  = aws_vpc.main.id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = each.key == "public" ? true : false
  tags                    = { Name = "${each.key}-subnet" }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags   = { Name = "main-igw" }
}

resource "aws_eip" "nat" {
  domain = "vpc"
  tags = { Name = "nat-eip" }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.subnets["public"].id
  tags          = { Name = "main-nat" }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = { Name = "public-rt" }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }
  tags = { Name = "private-rt" }
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.subnets["public"].id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.subnets["private"].id
  route_table_id = aws_route_table.private.id
}




resource "aws_security_group" "lab18_nginx_sg" {
  name        = "lab18_nginx_sg"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
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

resource "aws_security_group" "lab18_apache_sg" {
  name        = "lab18_apache_sg"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.lab18_nginx_sg.id]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.main.cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}



resource "aws_instance" "nginx" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.subnets["public"].id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.lab18_nginx_sg.id]
  key_name               = "ansible-key"

  tags = { Name = "nginx-ec2" }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo amazon-linux-extras enable nginx1",
      "sudo yum install -y nginx",
      "sudo systemctl start nginx",
      "sudo systemctl enable nginx"
    ]
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("C:/Users/Asus/Downloads/ansible-key.pem")
      host        = self.public_ip
    }
  }
}

resource "aws_eip" "nginx_eip" {
  instance = aws_instance.nginx.id
  domain = "vpc"
}
resource "aws_eip_association" "nginx_eip_assoc" {
  instance_id   = aws_instance.nginx.id
  allocation_id = aws_eip.nginx_eip.id
}

resource "aws_instance" "apache" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.subnets["private"].id
  vpc_security_group_ids = [aws_security_group.lab18_apache_sg.id]
  key_name               = "ansible-key"
  user_data              = <<-EOF
                          #!/bin/bash
                          sudo yum update -y
                          sudo yum install -y httpd
                          sudo systemctl start httpd
                          sudo systemctl enable httpd
                          EOF

  tags = { Name = "apache-ec2" }
}