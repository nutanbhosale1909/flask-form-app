variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.medium"
}

variable "key_name" {
  description = "aws_ec2.pem"
}

variable "ami" {
  default = "ami-0c02fb55956c7d316" # Ubuntu 20.04 LTS for us-east-1
}
