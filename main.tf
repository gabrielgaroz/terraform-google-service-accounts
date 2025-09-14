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

module "im-workspace" {
 source = "terraform-google-modules/bootstrap/google//modules/im_cloudbuild_workspace"
 version = "~> 7.0"

 project_id = "gke-showroom"
 deployment_id = "create-sa"
 im_deployment_repo_uri = "https://github.com/gabrielgaroz/terraform-google-service-accounts.git"
 im_deployment_ref = "REF"

 github_app_installation_id = "85843775"
}