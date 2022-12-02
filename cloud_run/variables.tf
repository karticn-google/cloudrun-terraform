variable "project_id" {
  type = string
}

variable "image_path" {
  type = string
  default = "us-docker.pkg.dev/cloudrun/container/hello"
}

variable "cloudrun_service_name" {
  type = string
  default = "cloudrun-srv"
}

variable "region" {
  type = string
  default = "us-central1"
}

variable "service_account" {
  type = string
}