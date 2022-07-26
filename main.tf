resource "google_compute_network" "main" {
  project                 = var.project_id
  name                    = var.main_vpc_name
  auto_create_subnetworks = false
  mtu                     = 1460
  delete_default_routes_on_create = true
}


resource "google_compute_subnetwork" "private" {
  project       = var.project_id
  name          = var.private_subnet_name
  ip_cidr_range = var.private_subnet_ip_cidr_range
  region        = var.region
  network       = google_compute_network.main.self_link
  private_ip_google_access = true
}
