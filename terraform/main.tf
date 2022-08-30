terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.77.0"
    }
  }
}

provider "yandex" {
  token = var.yandex_token
  cloud_id = var.yandex_id
  folder_id = var.yandex_folder
  zone = var.availability_zone
}

resource "yandex_kubernetes_cluster" "zonal_cluster_resource_name" {
  name        = var.cluster_name
  description = "The kubernetes cluster"

  network_id = var.cloud_network_id

  master {
    version = var.kuber_version
    zonal {
      zone      = var.availability_zone
      subnet_id = var.subnet_id
    }

    public_ip = var.public_ip

    maintenance_policy {
      auto_upgrade = true
      # maintenance_window = var.maintenance_window
    }
  }

  service_account_id      = var.service_account_id
  node_service_account_id = var.node_service_account_id

  labels = var.labels

  release_channel = var.release

  # kms_provider {
  #   key_id = "${yandex_kms_symmetric_key.kms_key_resource_name.id}"
  # }
}
