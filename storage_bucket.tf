/******************************************
  Module pubsub_subscription_iam_binding calling
 *****************************************/
module "storage_buckets_iam_binding" {
  source          = "./modules/storage_buckets_iam/"
  storage_buckets = [var.storage_bucket_one, var.storage_bucket_two]
  mode            = "additive"
  set_admin_roles = true

  bindings = {
    "roles/storage.legacyBucketOwner" = [
      "serviceAccount:${var.sa_email}",
      "group:${var.group_email}",
      "user:${var.user_email}",
    ]

    "roles/storage.objectAdmin" = [
      "serviceAccount:${var.sa_email}",
      "group:${var.group_email}",
      "user:${var.user_email}",
    ]
    "roles/storage.legacyBucketWriter" = [
      "serviceAccount:${var.sa_email}",
      "group:${var.group_email}",
      "user:${var.user_email}",
    ]


    "roles/storage.legacyBucketReader" = [
      "serviceAccount:${var.sa_email}",
      "group:${var.group_email}",
      "user:${var.user_email}",
    ]

    "roles/storage.storageAdmin" = [
      "serviceAccount:${var.sa_email}",
      "group:${var.group_email}",
      "user:${var.user_email}",
    ]
  }
  
}
