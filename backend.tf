terraform {
  backend "gcs" {
    bucket      = "poc-cross-access-state"
    prefix      = "terraform/state"
    # credentials = "gcp-learn-354506-8cb68555374d.json"
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  # credentials = file("gcp-learn-354506-8cb68555374d.json")
}
