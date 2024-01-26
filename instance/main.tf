# Define the Google Compute Engine instance
resource "google_compute_instance" "vm_instance" {
  name         = "${var.instance_name}"
  zone         = "${var.instance_zone}"
  machine_type = "${var.instance_type}"

  # Configure the boot disk
  boot_disk {
    initialize_params {
      # Specify the image for the boot disk
      image = "debian-cloud/debian-11"
    }
  }

  # Configure the network interface
  network_interface {
    network = "${var.instance_network}"

    # Allocate a one-to-one NAT IP to the instance
    access_config {
      # You can add specific configurations for access if needed
    }
  }
}
