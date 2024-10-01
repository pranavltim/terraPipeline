provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-08718895af4dfa033"  # Replace with your desired AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
