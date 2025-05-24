# Module Definition
# 
# Contains the main set of configuration for the module.
#================================================

resource "google_project_service" "api" {
  project = var.project
  service = "iam.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_on_destroy = false
}

resource "google_project_service" "api" {
  for_each = toset(var.service_apis)
  project = var.project
  service = each.key

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_on_destroy = false
}