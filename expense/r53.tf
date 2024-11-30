resource "aws_route53_record" "expense_r53" {
  count   = length(var.instance_names)
  name    = var.instance_names[count.index] == "frontend" ? local.domain_name : "${var.instance_names[count.index]}.${local.domain_name}"
  type    = "A"
  ttl     = "1"
  zone_id = local.zone_id
  records = var.instance_names[count.index] == "frontend" ? [aws_instance.expense_instances[count.index].public_ip] : [aws_instance.expense_instances[count.index].private_ip]
}