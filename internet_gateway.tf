resource "aws_internet_gateway" "main_internet_gateway" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "main"
  }
}
