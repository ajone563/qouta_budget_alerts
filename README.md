# qouta_budget_alerts

# Terraform Code for GCP Alerts

This repository contains Terraform code to create budget and quota alerts inside Google Cloud Platform (GCP). The code is written in the Terraform language and is designed to be used with Google Cloud Provider.

## Prerequisites

- You must have a Google Cloud Platform account
- You must have Terraform installed on your computer
- You must have the GCP provider installed, configured, and authenticated

## Usage

1. Clone this repository to your local machine
2. Run `terraform init` in the root directory to initialize the project
3. Create a `terraform.tfvars` file containing the following 
  - `billing_account_id`
  - `budget_amount`
  - `budget_name`
  - `quota_alert_threshold`
4. Run `terraform plan` to verify the plan and confirm that everything looks correct
5. Run `terraform apply` to apply the changes and create the budget and quota alerts.

Once the plan has been applied, you will see the budget and quota alerts created inside of the GCP console.
