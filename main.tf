provider "aws" {
  access_key = ${{ secrets.AWS_ACCESS_KEY_ID }}
  secret_key = ${{ secrets.AWS_SECRET_ACCESS_KEY }}
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

