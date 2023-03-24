provider "aws" {
    region = "ap-northeast-1"
#   access_key = "###"
#   secret_key = "###"
}

resource "aws_instance" "terraform-ec2" {
   ami           = "ami-067871d950411e643"
   instance_type = var.instance_type
}