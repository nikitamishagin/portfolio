variable "yandex_token" {}
variable "yandex_id" {}
variable "yandex_folder" {}
variable "availability_zone" {}

variable "cluster_name" {
  description = "The name cluster of kubernetes"
}

variable "cloud_network_id" {
  description = "Cloud network ID"
}

variable "kuber_version" {
  description = "Version of kubernetes"
  default = "1.21"
}

variable "subnet_id" {
  description = "Local subnet ID"
}

variable "public_ip" {
  description = "Having a public address"
  type = bool
  default = false
}

variable "maintenance_window" {
  type = map
  default = {
    start_time = "03:00"
    duration   = "1h"
  }
}

variable "service_account_id" {
  description = "Service account ID"
  default = ""
}

variable "node_service_account_id" {
  description = "Node service account ID"
  default = ""
}

variable "labels" {
  type = map
  default = {
    my_key       = ""
    my_other_key = ""
  }
}

variable "release" {
  default = "STABLE"
}
