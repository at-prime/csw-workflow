terraform {
  required_providers {
    secureworkload = {
      source = "CiscoDevNet/secureworkload"
    }
  }
}
provider "secureworkload" {
  api_key                  = var.api_key
  api_secret               = var.api_secret
  api_url                  = var.api_url
  disable_tls_verification = true
}

data "secureworkload_scope" "scope" {
  exact_name = "XFD"
}
