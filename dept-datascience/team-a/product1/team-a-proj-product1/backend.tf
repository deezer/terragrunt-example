terraform {
  backend "gcs" {
    bucket = "tfstate-team-a"
    prefix = "team-a-proj-product1"
  }
}