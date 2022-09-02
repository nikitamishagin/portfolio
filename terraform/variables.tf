### --- Account varialbles --- ###
variable "yandex_token" {
  description = "Secret token"
}
variable "yandex_id" {
  description = "Your accout ID"
}
variable "yandex_folder" {
  description = "Workspace ID"
}

### --- Global variables of kubernetes --- ###
variable "availability_zone" {
  description = "Availability zone"
}

variable "subnet_id" {
  description = "Subnet ID for nodes"
}

variable "start_time" {
  description = "Start upgrade time"
  default     = "03:00"
}

variable "duration" {
  description = "Duration upgrade"
  default     = "1h"
}

### --- Master variables of kubernetes --- ###
variable "cluster_name" {
  description = "The name cluster of kubernetes"
}

variable "cloud_network_id" {
  description = "Cloud network ID"
}

variable "kuber_version" {
  description = "Version of kubernetes"
  default     = "1.21"
}

variable "public_ip" {
  description = "Having a public address"
  type        = bool
  default     = false
}

variable "service_account_id" {
  description = "Service account ID"
  default     = "ajeaf1bgpnvamfkcuuft"
}

variable "node_service_account_id" {
  description = "Node service account ID"
  default     = "ajeaf1bgpnvamfkcuuft"
}

variable "labels" {
  type    = map
  default = {
    my_key       = ""
    my_other_key = ""
  }
}

variable "release" {
  default = "STABLE"
}

### --- Master variables of kubernetes --- ###
variable "worker_group_name" {
  description = "The name for group nodes"
}
variable "platform_id" {
  description = "Kind of hardware platform"
  default     = "standard-v3"
}

variable "worker_memory" {
  description = "GB RAM"
  type        = number
  default     = 1
}

variable "worker_cpu" {
  description = "Number core of CPU"
  type        = number
  default     = 2
}

variable "core_fraction" {
  description = "Guaranteed percentage of CPU availability"
  type        = number
  default     = 100
}

variable "worker_disk_type" {
  description = "Type disk of worker nodes"
  default     = "network-hdd"
}

variable "worker_disk_size" {
  description = "Disk size of worker nodes"
  type        = number
  default     = 64
}

variable "worker_preemptible" {
  description = "true - for test only"
  type        = bool
  default     = false
}

variable "container_runtime" {
  description = "Container engine"
  default     = "docker"
}

variable "fixed_scale_number_nodes" {
  description = "The number of nodes"
  type        = number
  default     = 1
}

variable "worker_max_expansion" {
  type    = number
  default = 0
}

variable "worker_max_unvailable" {
  type    = number
  default = 1
}
