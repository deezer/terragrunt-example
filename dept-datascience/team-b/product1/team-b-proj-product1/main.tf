module "project-factory" {
  source            = "terraform-google-modules/project-factory/google"
  version           = "11.3.0"
  random_project_id = false

  name            = var.project_name
  org_id          = var.organization_id
  billing_account = var.billing_account
  folder_id       = var.folder_id
  labels          = local.labels
}
