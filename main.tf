module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 4.0"
  project_id    = "gke-showroom"
  prefix        = "dev"
  names         = ["cute-sa"]
  display_name  = "Cute SA"
  description   = "A cute SA"
  project_roles = [
    "gke-showroom=>roles/container.admin",
    "gke-showroom=>roles/compute.admin"
  ]
}