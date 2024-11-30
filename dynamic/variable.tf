variable "instance_types"{
    type=map
    default={
        frontend="t3.micro"
        backend="t3.micro"
        db="t3.small"
    }
}

variable "domain_name"{
    default="ganeshsiripuram.tech"
}

variable "igress_set"{
    
    default=[{
        from_port=22
        to_port=22
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
    },
    {
        from_port=8080
        to_port=8080
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
    }]
}