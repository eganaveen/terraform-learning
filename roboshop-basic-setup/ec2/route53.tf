resource "aws_route53_record" "route53_roboshop" {
  zone_id = "Z096191132F6QKAS1TTXM"
  name    = "${var.COMPONENT}.egaroboshop.online"
  type    = "A"
  ttl     = "300"
  records = [aws_spot_instance_request.spot_instance.private_ip]
}