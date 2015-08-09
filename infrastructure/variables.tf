variable "account_file" {}
variable "ssh_path" {}
variable "ssh_user" {}
variable "project" {}
variable "region" {
	default = "us-central1"
}
variable "disk_image" {
	default = "ubuntu-1404-trusty-v20150805"
}
variable "machine_type" {
	default = "f1-micro"
}
variable "zones" {
	default {
		us-central1 = "us-central1-a"
		europe-west1 = "europe-west1-b"
		east-asia1 = "east-asia1-a"
	}
}
