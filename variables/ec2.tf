resource "aws_instance" "using_variables"{
    ami=var.ami_id
    instance_type=var.instance_type
    vpc_security_group_ids=[aws_security_group.sg_variables.id]
    tags= var.tags
}

resource "aws_security_group" "sg_variables"{

name= var.sg_name
description= var.description

    ingress{
        from_port = var.igress_from
        to_port = var.igress_to
        protocol= var.igress_protocol
        cidr_blocks= var.igress_cidr
        ipv6_cidr_blocks = ["::/0"]
    }

    egress{
        from_port=0
        to_port=0
        protocol="-1"
        cidr_blocks=["0.0.0.0/0"]
        ipv6_cidr_blocks=["::/0"]
    }

    tags=var.tags
}