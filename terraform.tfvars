#Define the provider
provider "google" {
  project = var.project_name
}

provider "google" {
  project = "prj-it-d-sandbox"
  version = "3.0"
  region = "us-east1"
}

 
# Create budget alert
resource "google_billing_budget" "budget" {
  name        = "budget-alert"
  project     = var.project_name
  display_name = "var.project_name"
  amount      = 500  # Set budget amount
  threshold   = 5    # Set alert thresholds
  all_updates = true # Set to true to get updates for all services 
  auto_pelled = true # Set to true to enable auto-provisioning of quota requests
}

# Set up the budget alert
resource "google_billing_budget_alert" "budget_alert" {
  name           = "billing_alert"
  billing_account = "12345-abcde-67890"
  display_name   = "Alert"
  threshold_percent = "25%"
  threshold_value    = "30"
  monitory_types     = ["ACTUAL"]
  notifications {
    pubsub_topic = "example-pubsub-topic"
  }

# Create a quota request
resource "google_billing_quota_request" "quota_request" {
  name           = "quota-request"
  project        = var.project_name
  service        = "cloudfunctions.googleapis.com"
  metric         = "outgoing_network_usage_per_second"
  display_name   = "Quota Request"
  value          = 300 # Set quota value
  max_stop_value = 400 # Set maximum stop value

  # Set up the quota alert
resource "google_billing_account_iam_binding" "quota_alert" {
  billing_account = "12345-abcde-67890"
  role            = "roles/billing.quotaAdmin"
  members         = ["austin_jones@chs.net"]
}
}