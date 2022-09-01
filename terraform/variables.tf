variable "yandex_token" {}
variable "yandex_id" {}
variable "yandex_folder" {}
variable "availability_zone" {}

### --- Master variables
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

variable "start_time" {
  description = "Start upgrade time"
  default = "03:00"
}

variable "duration" {
  description = "Duration upgrade"
  default = "1h"
}

variable "service_account_id" {
  description = "Service account ID"
  default = "ajeaf1bgpnvamfkcuuft"
}

variable "node_service_account_id" {
  description = "Node service account ID"
  default = "ajeaf1bgpnvamfkcuuft"
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

### --- Worker variables
variable "platform_id" {
  default = "standard-v3"
}

variable "worker_memory" {
  default = "1"
}

variable "worker_cpu" {
  default = "2"
}

variable "core_fraction" {
  
}

variable "worker_disk_type" {
  default = "network-hdd"
}

variable "worker_disk_size" {
  default = "64"
}

variable "worker_preemptible" {
  default = "false"
}

variable "container_runtime" {
  default = "docker"
}

variable "fixed_scale_number_nodes" {
  default = "1"
}

variable "worker_max_expansion" {

}

variable "worker_max_unvailable" {

}
