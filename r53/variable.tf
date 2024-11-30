variable "instance_name"{
    type=list(string)
    default=["frontend","backend","mysql"]
}

variable "zoneid"{
    type=string
    default="Z09843153HO8FHVUFGEB4"
}

variable "domain_name"{
    type=string
    default="ganeshsiripuram.tech"
}