# Configure the Google Cloud provider
provider "google" {
    account_file = "${var.account_file}"
    project = "${var.project}"
    region = "${var.region}"
}

resource "google_compute_network" "default" {
    name = "bcgb-network"
    ipv4_range = "10.240.0.0/16"
}

resource "google_compute_firewall" "ssh" {
    name = "ssh"
    network = "${google_compute_network.default.name}"

    allow {
        protocol = "tcp"
        ports = ["22"]
    }

    source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "http" {
    name = "http"
    network = "${google_compute_network.default.name}"

    allow {
        protocol = "tcp"
        ports = ["80"]
    }

    source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "https" {
    name = "https"
    network = "${google_compute_network.default.name}"

    allow {
        protocol = "tcp"
        ports = ["443"]
    }

    source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_address" "default" {
    name = "bcgb-address"
}

resource "google_compute_instance" "default" {
    name = "bcgb-instance"
    machine_type = "${var.machine_type}"
    zone = "${lookup(var.zones, var.region)}"

    disk {
        image = "${var.disk_image}"
    }

    network_interface {
        network = "${google_compute_network.default.name}"
        access_config {
        	nat_ip = "${google_compute_address.default.address}"
        }
    }

    address = "${google_compute_address.default.name}"

    metadata {
    	sshKeys = "${var.ssh_user}: ${file(var.ssh_path)}"
    }
}

output "ip" {
    value = "${google_compute_address.default.address}"
}
