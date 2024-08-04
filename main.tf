provider "google" {
  project     = "xxx"
  region      = "us-central1"
  zone        = "us-central1-a"
}
 
resource "google_compute_instance" "poc-1" {
  provider = google
  name = "test-vm-tf-plan-0804-1"
   machine_type = "e2-micro"
 
  network_interface {
    subnetwork = "xxx"
  }
 
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-focal-v20220712"
    }
  }
  allow_stopping_for_update = true
}