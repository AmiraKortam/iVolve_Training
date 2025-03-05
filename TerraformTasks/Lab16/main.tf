provider "aws" {
  region = "us-east-1" 
}

resource "aws_vpc" "existing_vpc" {
}

resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.existing_vpc.id
  cidr_block        = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "PublicSubnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.existing_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "PrivateSubnet"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.existing_vpc.id

  tags = {
    Name = "VPC-IGW"
  }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.existing_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "PublicRouteTable"
  }
}

resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}




resource "aws_instance" "ec2" {
  ami           = "ami-05b10e08d247fb927"  
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  associate_public_ip_address = true

  tags = {
    Name = "PublicEC2"
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > ec2-ip.txt"
  }
}


resource "aws_db_instance" "rds" {
  allocated_storage    = 20
  engine              = "mysql"
  engine_version      = "8.0"
  instance_class      = "db.t3.micro"
  db_name             = "mydatabase"
  username           = "admin"
  password           = "12345678"
  skip_final_snapshot = true
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name
}

resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds-subnet-group"
  subnet_ids = [aws_subnet.public_subnet.id, aws_subnet.private_subnet.id]

  tags = {
    Name = "RDS Subnet Group"
  }
}