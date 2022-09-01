### --- Master variables
cluster_name = "production-cluster"
cloud_network_id = "enpn0so7nhg38firn6fb"
kuber_version = "1.21"
subnet_id = "e9bgr0e54f3q7ulv429d"
public_ip = true
start_time = "03:00"
duration   = "1h"
service_account_id = "ajeaf1bgpnvamfkcuuft"
node_service_account_id = "ajeaf1bgpnvamfkcuuft"
labels = {
  my_key       = ""
  my_other_key = ""
}
release = "STABLE"

### --- Worker variables
core_fraction = 20
worker_preemptible = true
fixed_scale_number_nodes = "2"
worker_max_expansion = "0"
worker_max_unvailable = "1"
