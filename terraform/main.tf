resource "aws_security_group" "allow_web" {
  name        = "allow_web"
  description = "Allow HTTP and SSH"

  ingress = [
    {
      description = "HTTP"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      description = "SSH"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  egress = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id   # Ensure this is defined in your vars
  associate_public_ip_address = true       # <-- Adds a public IP automatically
  vpc_security_group_ids = [aws_security_group.allow_web.id]
  user_data              = file("setup.sh")

  tags = {
    Name = "flask-form-server"
  }
}

# Optionally, create and attach an Elastic IP
resource "aws_eip" "static_ip" {
  instance = aws_instance.web.id
  vpc      = true
}

output "elastic_ip" {
  value = aws_eip.static_ip.public_ip
}
