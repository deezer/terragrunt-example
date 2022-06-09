terraform {
  backend "gcs" {
    bucket = "tfstate-team-b"
    prefix = "team-b-proj-product1"
  }
}