# ---------------------------------------------------------------------------------------------------------------------
# SECURITY GROUP FOR EC2
# ---------------------------------------------------------------------------------------------------------------------

resource "aws_security_group" "ec2-sg" {
  name        = "${var.stack}-ec2-sg"
  description = "Access to the EC2 instances from the VPC"
  
    ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "${var.stack}-ec2-sg"
  }
}