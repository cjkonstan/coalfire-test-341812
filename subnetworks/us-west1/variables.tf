data "terraform_remote_state" "networks" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/coalfire-test-341812/networks/us-west1/terraform.tfstate"
  }
}
