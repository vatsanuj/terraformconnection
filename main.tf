provider "google" {
project = "sre-terraform-8080"
region = "us-central1"
}variable "machine" {
type = string
default = "f1-micro"
}variable "project" {
type = string
}

resource "google_compute_instance" "myvm" {
name = "myfirstvm"
machine_type = var.machine
zone = "us-central1-a"
network_interface {
network = "default"
}
boot_disk {
initialize_params {
image = "debian-cloud/debian-10"
}
}
}

resource "google_compute_instance" "myvm1" {
name = "secondfirstvm"
machine_type = var. machine
zone = "us-central1-a"
network_interface {
network = "default"
}
boot_disk {
initialize_params {
image = "rhel-cloud/rhel-7"
}
}
}

resource "google_compute_instance" "myvm2" {
name = "thirdvm"
machine_type = var. machine
zone = "us-central1-a"
network_interface {
network = "default"
}
boot_disk {
initialize_params {
image = "rhel-cloud/rhel-7"
}
}
}
