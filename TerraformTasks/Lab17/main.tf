provider "aws" {
  region = "us-east-1" 
}

resource "aws_vpc" "lab17-vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "lab17-subnet" {
  vpc_id            = aws_vpc.lab17-vpc.id
  cidr_block        = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "lab17-gw" {
  vpc_id = aws_vpc.lab17-vpc.id
}

resource "aws_route_table" "lab17-public_rt" {
  vpc_id = aws_vpc.lab17-vpc.id
}

resource "aws_route" "internet_access" {
  route_table_id         = aws_route_table.lab17-public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.lab17-gw.id
}

resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.lab17-subnet.id
  route_table_id = aws_route_table.lab17-public_rt.id
}

resource "aws_security_group" "lab17-ec2-sg" {
  vpc_id = aws_vpc.lab17-vpc.id

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


resource "aws_instance" "lab17-server" {
  ami                    = "ami-05b10e08d247fb927"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.lab17-subnet.id
  vpc_security_group_ids = [aws_security_group.lab17-ec2-sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras enable nginx1
              yum install -y nginx
              systemctl start nginx
              systemctl enable nginx
              EOF

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "lab17-nginx-server"
  }
}

resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "high-cpu-usage"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace          = "AWS/EC2"
  period             = 60
  statistic          = "Average"
  threshold          = 70
  alarm_description  = "Triggers when CPU > 70%."
  alarm_actions      = [aws_sns_topic.sns_topic.arn]
  dimensions = {
    InstanceId = aws_instance.lab17-server.id
  }
}

resource "aws_sns_topic" "sns_topic" {
  name = "cpu-alerts"
}

resource "aws_sns_topic_subscription" "sns_email" {
  topic_arn = aws_sns_topic.sns_topic.arn
  protocol  = "email"
  endpoint  = "amiraakortam@gmail.com" 
}
