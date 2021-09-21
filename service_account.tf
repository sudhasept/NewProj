/******************************************
  Module service_account_iam_binding calling
 *****************************************/
module "service_account_iam_binding" {
  source = "./modules/service_accounts_iam/"

  service_accounts = [var.service_account_one, var.service_account_two]
  #service_accounts = [var.service_account_one]
  #project          = var.service_account_project
  mode             = "additive"
  role             = "OWNER"
  bindings = {
    "roles/iam.serviceAccountKeyAdmin" = [
      "serviceAccount:${var.sa_email}",
      "group:${var.group_email}",
      "user:${var.user_email}",
    ]
    "roles/iam.serviceAccountTokenCreator" = [
      "serviceAccount:${var.sa_email}",
      "group:${var.group_email}",
      "user:${var.user_email}",
    ]
  }
  conditional_bindings = [
    {
      role = "roles/iam.serviceAccountUser"
      members = ["user:${var.user_email}"]
    }
  ]
}