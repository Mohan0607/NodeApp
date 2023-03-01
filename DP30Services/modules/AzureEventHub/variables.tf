#Prefix & Environments
variable "Prefix" {}
variable "environment" {}

variable "resource_group_name" {
  type    = string
}

variable "location" {
  type    = string
}

variable "eventhub_name" {
  type    = string
}

variable "AzureEventHub" {
  type    = string
}

variable "sku" {
  type    = string
}

variable "capacity" {
  type    = number
  default = "1"
}

# variable "eventhub_namespace" {
#   type    = string
# }


variable "partition_count" {
  type    = number
  default = "2"
}

variable "message_retention" {
  type    = number
  default = "1"
}






