# --------------------------------------------------------------
# Internet Gateway
# --------------------------------------------------------------
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "${var.env}-${var.system}-igw"
    Cost = "${var.system}"
  }
}