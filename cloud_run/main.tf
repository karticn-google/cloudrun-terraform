resource "google_cloud_run_service" "cloudrun_service" {
  name     = var.cloudrun_service_name
  location = var.REGION
  project = var.PROJECT_ID

  template {
    spec {
      containers {
        image = var.image_path
        env {
          name = "PROJECT_ID"
          value = var.PROJECT_ID
        }
        env {
          name = "DATASET_ID"
          value = var.DATASET_ID
        }
        env {
          name = "VIEW_NAME"
          value = var.VIEW_NAME
        }
        env {
          name = "BUCKET_NAME"
          value = var.BUCKET_NAME
        }
        env {
          name = "REGION"
          value = var.REGION
        }
      }
      service_account_name = var.service_account
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}
