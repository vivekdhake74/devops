terraform {
  backend "s3" {
    bucket = "3.devops.candidate.exam"
    key    = "vivek.dhake"
    region = "eu-west-1"
  }
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = merge(var.project_tags, {
    Name = "private-subnet-1"
  })
}