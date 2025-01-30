resource "aws_instance" "expense" {
  ami                    = "ami-09c813fb71547fc4f"
  count                  = 3
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = "t3.micro"
  subnet_id              = "subnet-03f94501411a1b466"
  # tags = {
  #   Name = var.instance_name[count.index]
  # }
  tags = merge(
        var.common_tags,
        {
          Name = var.instance_name[count.index]
        }
  )
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