#Prefix & Environments
variable "Prefix" {}
variable "environment" {}

variable "resource_group_name" {
  type    = string
}

variable "location" {
  type    = string
}

variable "stream_analytics_name" {
  type    = string
}

variable "AzureStreamAnalytics" {
  type    = string
}

variable "compatibility_level" {
  type    = number
  default = "1.2"
}

variable "events_late_arrival" {
  type    = number
  default = "60"
}

variable "events_out_of_order" {
  type    = number
  default = "60"
}
variable "events_out_of_order_policy" {
  type    = string
  default = "Adjust"
}

variable "output_error_policy" {
  type    = string
  default = "Drop"
}
 variable "streaming_units" {
  type    = number
  default = "3"
}

#tags
variable "tags" {
  description = "Tags to set for all resources"
  type        = map(string)
  default = {
    project     = ""
    environment = ""
    owners      = ""
  }
}



