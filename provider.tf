variable "pm_api_url" {
  type = string
}

variable "pm_user" {
  type = string
}

variable "pm_password" {
  type = string
}

variable "pm_otp" {
  type = string
  default = ""
}

terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "2.9.11"
    }
  }
}

provider "proxmox" {
  pm_debug = true
  pm_api_url  = var.pm_api_url
  pm_user     = var.pm_user
  pm_password = var.pm_password
  pm_otp      = var.pm_otp
}
