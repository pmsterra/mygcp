provider "google" {
  version = ">= 3.69"


  
  region  = "us-central1"
}


 provider "google-beta" {
   version = ">= 3.69"
  #provider = google-beta


  region  = "us-central1"
}

