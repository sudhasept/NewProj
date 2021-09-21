# setup the GCP provider | provider.tf

terraform {
  required_version = ">= 0.12"
  
  backend "gcs" {
  bucket = "my-tfstate-bucket"   # GCS bucket name to store terraform tfstate
  prefix = "first-app"           # Update to desired prefix name. Prefix name should be unique for each Terraform project having same remote state bucket.
  }


}

provider "google" {
  project = var.app_project
  credentials = file(var.gcp_auth_file)
  region  = var.gcp_region_1
  zone    = var.gcp_zone_1
}

# Create a GCS Bucket
resource "google_storage_bucket" "my_bucket" {
name     = var.bucket_name
location = var.region
}