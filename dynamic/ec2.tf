resource "aws_security_group" "terraform-security-group"{
    description="I am creating my first security group terrafrom"
    egress{
        from_port=0
        to_port=0
        protocol= "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    dynamic "ingress"{
        for_each=var.igress_set
        content{
        from_port= ingress.value["from_port"]
        to_port=   ingress.value["to_port"]
        protocol=ingress.value["protocol"]
        cidr_blocks =ingress.value["cidr_blocks"]
    }
    }

    tags={
        Name="allow_ssssssshhhhhhhh" 
    }
}

resource "aws_instance" "my_first_instance"{
    for_each=var.instance_types
    ami = "ami-09c813fb71547fc4f"
    instance_type=each.value
    vpc_security_group_ids =[aws_security_group.terraform-security-group.id]
    tags={
        Name=each.key
    }
    }
