data "aws_vpc" "awsb41vpc" {
  id = "vpc-0aebad4adc59c56c2"
}

resource "aws_subnet" "awsb41-subnet1-public" {
  vpc_id            = data.aws_vpc.awsb41vpc.id
  cidr_block        = "10.41.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "AWSB41-Public-Subnet-1"
  }
}

resource "aws_subnet" "awsb42-subnet1-public" {
  vpc_id            = data.aws_vpc.awsb41vpc.id
  cidr_block        = "10.41.2.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "AWSB42-Public-Subnet-2"
  }
}

resource "aws_subnet" "awsb43-subnet1-public" {
  vpc_id            = data.aws_vpc.awsb41vpc.id
  cidr_block        = "10.41.3.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "AWSB43-Public-Subnet-3"
  }
}