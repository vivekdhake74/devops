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

resource "aws_lambda_function" "lambda" {
  function_name = "invoke_lambda"
  filename         = data.archive_file.zip.output_path
  source_code_hash = data.archive_file.zip.output_base64sha256
  role    = aws_iam_role.iam_for_lambda.arn
  handler = "welcome.lambda_handler"
  runtime = "python3.6"
}