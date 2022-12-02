resource "google_cloud_run_service" "cloudrun_service" {
  name     = var.cloudrun_service_name
  location = var.region
  project = var.project_id

  template {
    spec {
      containers {
        image = var.image_path
      }
      service_account_name = var.service_account
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}
