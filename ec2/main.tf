resource "aws_instance" "my_instance" {
  ami = "ami-0bb6af715826253bf"
  instance_type = "t2.micro"
}
output "myec2_ip_address" {
  value = aws_instance.my_instance
}
