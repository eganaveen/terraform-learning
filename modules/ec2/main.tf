resource "aws_instance" "my_instance" {
  ami                    = "ami-0bb6af715826253bf"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [var.sg]

  provisioner "local-exec" {
    command = <<EOF
      sleep 60
      cd /home/centos/Ansible
      ansible-playbook -i ${self.public_ip}, roboshop.yml -e HOST=all -e role_name=frontend -e ansible_user=centos -e ansible_pass=DevOps321
    EOF
  }

}
variable "sg" {}

output "public_ip" {
  value = aws_instance.my_instance.public_ip
}