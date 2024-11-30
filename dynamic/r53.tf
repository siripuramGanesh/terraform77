resource "aws_route53_record" "for_each_r53"{
    for_each=aws_instance.my_first_instance
    zone_id="Z09843153HO8FHVUFGEB4"
    name=each.key=="frontend" ? "${var.domain_name}" : "${each.key}.${var.domain_name}"
    type="A"
    ttl="1"
    records=each.key=="frontend" ? [each.value["public_ip"]] : [each.value["private_ip"]]
}