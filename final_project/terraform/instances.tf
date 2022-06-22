resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file(var.public_key)
}

resource "aws_instance" "dev_server" {
  ami                    = "ami-09a41e26df464c548"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.ec2-sg.id]
  tags = {
    Name    = "My Dev Server"
    Owner   = "Valery Yurchenko"
    Project = "PetClinic"
  }
}

resource "aws_instance" "prod_server" {
  ami                    = "ami-09a41e26df464c548"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.ec2-sg.id]
  tags = {
    Name    = "My Prod Server"
    Owner   = "Valery Yurchenko"
    Project = "PetClinic"
  }
}
