resource "aws_route53_record" "my_first_record"{
    count=length(var.instance_name)
    zone_id=var.zoneid
    name="${var.instance_name[count.index]}.${var.domain_name}"
    type="A"
    ttl=1
    records=[aws_instance.my_first_instance[count.index].private_ip]

}