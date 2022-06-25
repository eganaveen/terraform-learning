resource "aws_instance" "my_instance" {
  ami                    = "ami-0bb6af715826253bf"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [var.sg]
}
variable "sg" {}

output "public_ip" {
  value = aws_instance.my_instance.public_ip
}