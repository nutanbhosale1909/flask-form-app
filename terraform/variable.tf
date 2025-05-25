variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.medium"
}

variable "aws1.pem" {
  description = "Your AWS EC2 Key Pair Name"
}

variable "ami" {
  default = "ami-0c02fb55956c7d316" # Ubuntu 20.04 in us-east-1
}
