provider "google" {
  project = "coalfire-test-341812"
}

terraform {
	required_providers {
		google = {
	    version = "~> 4.11.0"
		}
  }
}
