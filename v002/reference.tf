provider "aws" {
  region     = "ap-northeast-1"
  access_key = "###"
  secret_key = "###"
}

resource "aws_instance" "terraform-ec2" {
  ami           = "ami-067871d950411e643"
  instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
  vpc = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.terraform-ec2.id
  allocation_id = aws_eip.lb.id
}


resource "aws_security_group" "allow_tls" {
  name = "homoro-security-group"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.lb.public_ip}/32"]

    // using valiable
    # cidr_blocks = [var.vpn_ip]

    #    cidr_blocks = [aws_eip.lb.public_ip/32]
  }
}
