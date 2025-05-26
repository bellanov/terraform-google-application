# Variables
# 
# Input variables allow you to customize modules without altering their source code.
#================================================

variable "project" {
    description = "Google Cloud Project."
    type = string
}

variable "service_apis" {
    description = "Google Service Cloud APIs to enable."
    type = list(string)
    default = []
}