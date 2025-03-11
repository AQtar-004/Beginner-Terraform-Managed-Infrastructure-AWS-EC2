resource "aws_instance" "web-server" {
  ami           = "ami-01816d07b1128cd2d" 
  instance_type = "t2.micro"
  key_name      = "Demo_keypair"
  subnet_id     = aws_subnet.my_sub.id
  security_groups = [aws_security_group.web_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "Web-Server"
  }

  metadata_options {
    http_tokens   = "required"
    http_endpoint = "enabled"
  }
}
