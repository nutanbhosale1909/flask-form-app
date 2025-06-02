variable "region" {
  default = "ap-south-1"
}

variable "ami" {
  description = "Ubuntu AMI ID"
  default     = "ami-00bb6a80f01f03502"
}

variable "instance_type" {
  default = "t3.medium"
}

variable "key_name" {
  description = "Your existing key pair name"
  default     = "terraform_aws"
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance"
  default     = "subnet-0a27fed6a28aeec48"
}
