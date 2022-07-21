
variable "bucket_name" {
  description = "The name of the Google Cloud Storage bucket. Must be globally unique."
  default = ""
}

variable "key_name" {
  description = "Name of the KMS key"
  type = string
  default = "mykey"
}

variable "keyring_name" {
  description = "Name of the KMS Keyring"
  type = string
  default = "mykeyring"
}

variable "algorithm" {
  description = "Algorithm for the KMS key"
  default = "GOOGLE_SYMMETRIC_ENCRYPTION"
  type = string
}

variable "region" {
  description = "Region for the KMS key"
  default = "us-central1"
  type = string
}
variable "service_project" {
  description = "Region for the KMS key"
  default = "my-service-project-357012"
  type = string
}

variable "project" {
  description = "Region for the KMS key"
  default = "my-service-project-357012"
  type = string
}

variable "host_project" {
  description = "Region for the KMS key"
  default = "my-host-project-357012"
  type = string
}
variable "rotation_period" {
  description = "Time in seconds to rotate key"
  type = string
  default = "2592000s" // 30 days
}

variable "storage_class" {
  default = "STANDARD"
}
