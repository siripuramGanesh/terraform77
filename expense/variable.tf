variable "instance_names" {
  type        = list(string)
  default     = ["frontend", "mysql", "backend"]
  description = "names of instances"
}

# variable "domain_name" {
#   type    = string
#   default = "ganeshsiripuram.tech"
# }

# variable "zone_id" {
#   type    = string
#   default = "Z09843153HO8FHVUFGEB4"
# }