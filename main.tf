module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 4.0"
  project_id    = "gke-showroom"
  prefix        = "dev"
  names         = ["my-sa"]
  display_name  = "My SA"
  description   = "My SA"
  project_roles = [
    "gke-showroom=>roles/container.admin",
    "gke-showroom=>roles/compute.admin"
  ]
}