variable "instance_types"{
    type=map
   
    }

variable "domain_name"{
    default="ganeshsiripuram.tech"
}

variable common_tags {
    default={
        Project="expense"
        Terraform="true"
    }
}

variable tags{
    type=map

}

variable environment{
    
}
 variable zoneid{
    default="Z09843153HO8FHVUFGEB4"
 }

 