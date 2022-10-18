

# module "data_fusion" {
#   source = "./modules/datafusion/instance/"

#   name                        = "test-instance"
#   project                     = var.service_project
#   region                      = "us-central1"
#   #network                     = "projects/12324343423/global/networks/test-network"
#   #data_fusion_service_account = "datafusion-sa@my-service-project-357012.iam.gserviceaccount.com"
  
#   description = "My test data Fusion instance"
  
#   type = "BASIC"
  
#   labels = {
#     example_key = "example_value"
#     owner = "praveen"
#   }
    
#   datafusion_version = "6.5.0"

#   network_config = {
#     network  = "projects/my-service-project-357012/global/networks/test-network"
#     ip_allocation = "10.2.0.0/16"
#   }
# }




# module "data_fusion_namespace" {
#   source = "./modules/datafusion/namespace/"
#   name  = "test_namespace"
#   cdp_host = tostring(module.data_fusion.instance.service_endpoint)
#   preferences = {
#     FOO = "BAR"
#   }
  
# }


module "datafusion_firewall" {
  source                  = "terraform-google-modules/network/google//modules/fabric-net-firewall"
  project_id              = var.service_project
  network                 = "test-network"
  internal_ranges_enabled = true
  internal_ranges         = ["10.2.0.0/16"]

  custom_rules = {
    dataproc-internal = {
      description = "Allow hosts in dataproc subnet to talk to each other on all ports"
      direction   = "INGRESS"
      action      = "allow"
      ranges      = ["10.2.0.0"]

      use_service_accounts = false
      rules = [{
        protocol = "tcp"
        ports    = ["22"]
        },
        {
          protocol = "icmp"
          ports    = []
        },
        {
          protocol = "tcp"
          ports    = ["1-65535"]
        },

        {
          protocol = "udp"
          ports    = ["1-65535"]
        }
      ]

      sources = null
      targets = null

      extra_attributes = {
        priority = 80
      }
    }
    allow-data-fusion-ssh = {
      description          = "Allow IPs from the the allocation for private data fusion instance to SSH to dataproc clusters"
      direction            = "INGRESS"
      action               = "allow"
      ranges               = ["10.2.0.0/16"]
      use_service_accounts = false

      rules = [{
        protocol = "tcp"
        ports    = ["22"]
      }]

      sources = null
      targets = null

      extra_attributes = {
        priority = 80
      }
    }
  }
}

