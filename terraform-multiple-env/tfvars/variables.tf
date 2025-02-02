variable "project"{  
  default = "expense"
}

variable "environment" {

}
variable "instances" {
  default = ["mysql", "backend", "frontend"]
}

variable "zone_id" {
  type    = string
  default = "Z04298043G0OIMEFK563C"
}

variable "domain_name" {
    type = string
    default = "vdaws.xyz"
}

variable "common_tags" {
    type = map(string)
    default = {
        Project = "expense"        
    }
}