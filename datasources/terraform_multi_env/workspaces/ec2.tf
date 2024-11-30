resource "aws_instance" "my_first_instance"{
    ami = "ami-09c813fb71547fc4f"
    instance_type=lookup(var.instance_types,terraform.workspace)
    vpc_security_group_ids =["sg-0aa332231e352fd9d"]
    tags={
        Name="tfw"
    }
}