resource "aws_spot_instance_request" "spot_instance" {
  ami                    = "ami-0005e19f20686f0b2"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  wait_for_fulfillment = true

  tags = {
    Name = var.COMPONENT
  }
  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = self.public_ip
    }
    inline = [
      "ansible-pull -U https://github.com/eganaveen/Ansible.git roboshop.yml -e HOSt=localhost -e role_name=${var.COMPONENT}"
    ]
  }
}