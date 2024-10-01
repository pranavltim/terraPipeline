provider "aws" {
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

