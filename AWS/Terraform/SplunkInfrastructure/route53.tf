resource "aws_route53_zone" "eni_zone" {
  # Replace with your own domain name e.g "john.nilipay.com"
    name = "eni.nilipay.com"
}


resource "aws_route53_record" "instance_records" {
  for_each = {
    for i in aws_instance.splunk_instances : 
      i.tags["Name"] => i.public_ip
  }

  zone_id = aws_route53_zone.eni_zone.zone_id
  name    = "${each.key}"
  type    = "A"
  ttl     = 60
  records = [each.value]
}

