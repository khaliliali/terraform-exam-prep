provider "aws" {
  region     = "ap-northeast-1"
  access_key = "AKIA3GXE3DS36MV46KF4"
  secret_key = "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"
}

resource "aws_instance" "terraform-ec2" {
  ami           = "ami-067871d950411e643"
  instance_type = "t2.micro"
}
