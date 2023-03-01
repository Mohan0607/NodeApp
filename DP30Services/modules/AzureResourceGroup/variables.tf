variable "resource_group_name" {
  type    = string
  default = "defaultrg"
}

variable "location" {
  type    = string
  default = "East US"
}
#Prefix & Environments
variable "Prefix" {}
variable "environment" {}


variable "tags" {
  type = map(string)
  default = {
    developer     = "developer1"
    project_owner = "project_owner1"
    project       = "project1"
  }
}
