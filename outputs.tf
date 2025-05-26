# Outputs
# 
# Output values make information about your infrastructure available on the command line, 
# and can expose information for other Terraform configurations to use.
#================================================

output "enabled_apis" {
  description = "Enabled Service APIs."
  value       = var.service_apis
}