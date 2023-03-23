# provider "aws" {
#   region     = "ap-northeast-1"
#   access_key = "AKIA3GXE3DS36MV46KF4"
#   secret_key = "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"
# }

# resource "aws_eip" "lb" {
#   vpc      = true
# }

# output "eip" {
#   value = aws_eip.lb
# }

# resource "aws_s3_bucket" "mys3" {
#   bucket = "homoro-attribute-demo-002"
# }

# output "mys3bucket" {
#   value = aws_s3_bucket.mys3
# }