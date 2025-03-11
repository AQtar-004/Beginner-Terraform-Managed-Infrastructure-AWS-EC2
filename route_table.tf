resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main_internet_gateway.id
  }

  tags = {
    Name = "public-route-table"
  }

}
resource "aws_route_table_association" "subnet_association" {
  subnet_id      = aws_subnet.my_sub.id
  route_table_id = aws_route_table.public_route.id
}
