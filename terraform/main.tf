terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.77.0"
    }
  }
}

provider "yandex" {
  token     = var.yandex_token
  cloud_id  = var.yandex_id
  folder_id = var.yandex_folder
}

### --- Master node of kubernetes --- ###
resource "yandex_kubernetes_cluster" "master-node" {
  name        = var.cluster_name
  description = "The kubernetes cluster"
  network_id  = var.cloud_network_id

  master {
    version = var.kuber_version
    zonal {
      zone      = var.availability_zone
      subnet_id = var.subnet_id
    }

    public_ip = var.public_ip

    maintenance_policy {
      auto_upgrade = true

      maintenance_window {
        start_time = var.start_time
        duration   = var.duration
      }
    }
  }

  service_account_id      = var.service_account_id
  node_service_account_id = var.node_service_account_id
  release_channel         = var.release
}

### --- Worker nodes of kubernetes --- ###
resource "yandex_kubernetes_node_group" "worker-nodes" {
  cluster_id  = yandex_kubernetes_cluster.master-node.id
  name        = var.worker_group_name
  description = "The kubernetes worker group"
  version     = var.kuber_version

  instance_template {
    platform_id = var.platform_id
    name        = "worker-node-{instance.short_id}"

    network_interface {
      nat        = true
      subnet_ids = [var.subnet_id]
    }

    resources {
      memory        = var.worker_memory
      cores         = var.worker_cpu
      core_fraction = var.core_fraction
    }

    boot_disk {
      type = var.worker_disk_type
      size = var.worker_disk_size
    }

    scheduling_policy {
      preemptible = var.worker_preemptible
    }

    container_runtime {
      type = var.container_runtime
    }
  }

  scale_policy {
    fixed_scale {
      size = var.fixed_scale_number_nodes
    }
  }

  deploy_policy {
    max_expansion   = var.worker_max_expansion
    max_unavailable = var.worker_max_unvailable
  }

  allocation_policy {
    location {
      zone = var.availability_zone
    }
  }

  maintenance_policy {
    auto_upgrade = true
    auto_repair  = true

    maintenance_window {
      start_time = var.start_time
      duration   = var.duration
    }
  }
}
