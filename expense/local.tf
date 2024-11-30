locals {
    domain_name="ganeshsiripuram.tech"
    zone_id="Z09843153HO8FHVUFGEB4"
    instance_type= var.instance_names == "mysql" ? "t3.small" : "t3.micro"
    #count.index will not work in locals
}