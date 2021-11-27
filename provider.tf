terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.85.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "sre-terraform-8080"
  region = "us-central1"
  zone = "us-central1-a"
}
