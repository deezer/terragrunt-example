locals {
  labels = {
    "tech_lead" = replace(lower(var.tech_lead), "/[_ .:/]/", "-")
    "region"    = var.region
    "zone"      = var.zone
  }
}
