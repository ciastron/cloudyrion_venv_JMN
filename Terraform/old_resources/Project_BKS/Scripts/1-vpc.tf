resource "aws_vpc" "Project_BKY" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Project_BKY"
  }
}
