resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.Project_BKY.id

  tags = {
    Name = "igw"
  }
}