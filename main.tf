
resource "aws_security_group" "example_sg_push" {
  name        = "git-security-group"
  description = "Allow inbound traffic on specific ports"
  vpc_id      = "vpc-0c7b54ead3fa7bf0e" # Replace with your VPC ID

  ingress {
    description = "Allow HTTP from anywhere"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow SSH from a specific IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["203.0.113.0/24"] # Replace with your IP or IP range
  }

  ingress {
    description = "Allow HTTPS from anywhere"
    from_port   = 53
    to_port     = 53
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "example-sg"
  }
}
