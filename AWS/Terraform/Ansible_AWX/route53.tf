
data "aws_route53_zone" "eni_zone" {
  name = "eni.nilipay.com"

}
resource "aws_route53_record" "instance_records" {
  zone_id = data.aws_route53_zone.eni_zone.zone_id
  name    = "awx.${data.aws_route53_zone.eni_zone.name}"
  type    = "A"
  ttl     = 60
  records = [aws_instance.ansible.public_ip]
}

