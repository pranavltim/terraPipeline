provider "aws" {
  access_key = "your aws access key here"
  secret_key = "your aws secret key here"
  region     = "ap-south-1"
}


resource "aws_instance" "ourfirst" {
  ami           = "ami-08718895af4dfa033"
  instance_type = "t2.micro"
lifecycle {
  prevent_destroy = true
  ignore_changes = ["ami",]
  }

}



provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-08718895af4dfa033"  # Replace with your desired AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "MyInstance1"
  }
}
