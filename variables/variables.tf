variable "ami_id" {
    type= string
    default="ami-09c813fb71547fc4f"
    description="this is ami id of devops practice"
}

variable "instance_type"{
    type= string
    default="t3.micro"
    description="this is the type of instance"
    sensitive="true"
}

variable "sg_name"{
    type=string
    default="sg_group_using_variables"
}

variable "description"{
    type=string
    default="i created sg-grps using variables"
}

variable "igress_from"{
    type=number
    default=22
}

variable "igress_to"{
    type=number
    default=22
}

variable "igress_protocol"{
    type=string
    default="tcp"
}

variable "tags"{
    type=map
    default={
    Name="sg_using_variable"
    Project="Expense"
    Component="Backend"
    Environment="Dev"
    Terraform="true"
    }
}
variable "igress_cidr"{
    type=list
    default=["0.0.0.0/0"]
}
