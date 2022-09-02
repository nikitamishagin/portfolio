### --- Global values of kubernetes --- ###
availability_zone       = "ru-central1-a"
subnet_id               = "e9bgr0e54f3q7ulv429d"
start_time              = "03:00"
duration                = "1h"

### --- Master values of kubernetes --- ###
cluster_name            = "production-cluster"
cloud_network_id        = "enpn0so7nhg38firn6fb"
kuber_version           = "1.21"
public_ip               = true
service_account_id      = "ajeaf1bgpnvamfkcuuft"
node_service_account_id = "ajeaf1bgpnvamfkcuuft"
release = "STABLE"

### --- Worker values of kubernetes --- ###
worker_group_name        = "worker-group"
core_fraction            = 20
worker_preemptible       = true
fixed_scale_number_nodes = 2
worker_max_expansion     = 0
worker_max_unvailable    = 1
