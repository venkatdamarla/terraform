resource "aws_instance" "this" {
  ami                    = data.aws_ami.joindevops.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = "t3.micro"
  subnet_id              = "subnet-03f94501411a1b466"
  tags = {
    Name = "terraform-demo"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

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
  #   vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_tls"
  }
}