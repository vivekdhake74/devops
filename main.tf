terraform {
  backend "s3" {
    bucket = "3.devops.candidate.exam"
    key    = "vivek.dhake"
    region = "eu-west-1"
  }
}