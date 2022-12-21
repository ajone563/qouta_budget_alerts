resource "google_project_service" "service" {
  project = "prj-it-d-sandbox"
  service = "compute.googleapis.com"
}

resource "google_project_service_usage_export_bucket" "usage_export_bucket" {
  project = "prj-it-d-sandbox"
  service = google_project_service.service.service
  bucket  = "my-bucket"
}

resource "google_billing_budget" "budget" {
  project         = "prj-it-d-sandbox"
  display_name    = "My Budget"
  budget_amount   = "100"
  budget_currency = "USD"

  threshold_rules {
    threshold_percent = 90
    send_email        = true
  }
}
