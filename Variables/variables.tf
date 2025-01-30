variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is the RHEL9 (DevOps Practice) AMI Id"
}
variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "This is the processor name"

}
variable "subnet_id" {
  type        = string
  default     = "subnet-03f94501411a1b466"
  description = "This is the subnet ID for default VPC"

}

variable "ec2_tags" {
  type = map(any)
  default = {
    Project     = "expense"
    Component   = "backend"
    Environment = "dev"
    Name        = "expense-backend-dev"
  }
}



variable "from_port" {
  type    = number
  default = 22
}

variable "to_port" {
  type    = number
  default = 22
}

variable "cidr_blocks" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map(any)
  default = {
    Name = "expense-backend-dev"
  }
}



