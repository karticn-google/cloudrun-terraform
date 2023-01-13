variable "PROJECT_ID" {
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

variable "REGION" {
  type = string
  default = "us-central1"
}

variable "service_account" {
  type = string
}

variable "DATASET_ID" {
  type = string
}

variable "VIEW_NAME" {
  type = string
}

variable "BUCKET_NAME" {
  type = string
}