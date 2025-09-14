module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 4.0"
  project_id    = "gke-showroom"
  prefix        = "dev"
  names         = ["awesome-sa"]
  display_name  = "Awesome SA"
  description   = "An awesome SA"
  project_roles = [
    "roles/container.admin",
    "roles/compute.admin"
  ]
}