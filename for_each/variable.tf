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