

module "data_fusion" {
  source = "./modules/datafusion/instance/"

  name                        = "test-instance"
  project                     = var.service_project
  region                      = "us-central1"
  #network                     = "projects/925822833165/global/networks/pms-network"
  #data_fusion_service_account = "datafusion-sa@my-service-project-357012.iam.gserviceaccount.com"
  
  description = "My test data Fusion instance"
  
  type = "BASIC"
  
  labels = {
    example_key = "example_value"
    owner = "praveen"
  }
    
  datafusion_version = "6.5.0"

  network_config = {
    network  = "projects/my-service-project-357012/global/networks/pms-network"
    ip_allocation = "10.2.0.0/16"
  }
}




module "data_fusion_namespace" {
  source = "./modules/datafusion/namespace/"
  name  = "test_namespace"
  cdp_host = tostring(module.data_fusion.instance.service_endpoint)
  preferences = {
    FOO = "BAR"
  }
  
}
