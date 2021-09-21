# Google Cloud connection & authentication and Application configuration | variables-auth.tf

# GCP authentication file
variable "gcp_auth_file" {
  type = string
  description = "GCP authentication file"
}

# define GCP project name
variable "app_project" {
  type = string
  description = "GCP project name"
}

# define application name
variable "app_name" {
  type = string
  description = "Application name"
}

# define application domain
variable "app_domain" {
  type = string
  description = "Application domain"
}

# define application environment
variable "app_environment" {
  type = string
  description = "Application environment"
}

variable "bucket_name" {
description = "GCS Bucket name. Value should be unique ."
type        = string
}

variable "group_email" {
  type        = string
  description = "Email for group to receive roles (ex. group@example.com)"
}

variable "sa_email" {
  type        = string
  description = "Email for Service Account to receive roles (Ex. default-sa@example-project-id.iam.gserviceaccount.com)"
}

variable "user_email" {
  type        = string
  description = "Email for group to receive roles (Ex. user@example.com)"
}

/******************************************
  storage_bucket_iam_binding variables
 *****************************************/
variable "storage_bucket_one" {
  type        = string
  description = "First name of a GCS bucket to add the IAM policies/bindings"
}

variable "storage_bucket_two" {
  type        = string
  description = "Second name of a GCS bucket to add the IAM policies/bindings"
}

/******************************************
  service_account_iam_binding variables
 *****************************************/
variable "service_account_project" {
  type        = string
  description = "Project id of the service account"
}

variable "service_account_one" {
  type        = string
  description = "First service Account to add the IAM policies/bindings"
}

variable "service_account_two" {
  type        = string
  description = "First service Account to add the IAM policies/bindings"
}

variable "credentials_file_path" {
  description = "Path to the service account"
}