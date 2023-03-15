terraform {
  backend "s3" {
    bucket = "3.devops.candidate.exam"
    key    = "vivek.dhake"
    region = "eu-west-1"
  }
}

resource "aws_subnet" "private" {
  vpc_id            = "vpc-0de2bfe0f5fc540e0"
  cidr_block        = "10.0.1.0/24"
  tags = merge(var.project_tags, {
    Name = "private-subnet-1"
  })

}