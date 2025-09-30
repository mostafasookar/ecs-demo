variable "prefix" {
  description = "Prefix for resources in AWS"
  default     = "pgadmin-marquez"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "pgadmin-marquez"
}

variable "contact" {
  description = "Contact email for tagging resources"
  default     = "mostafa.sokkar.99@gmail.com"
}

variable "db_username" {
  description = "Username for the marquez app api database"
  default     = "marquezapp"
}

variable "db_password" {
  type        = string
  description = "Database master password"
  default     = "SecurePass1238"
  sensitive   = true
}

variable "marquez_api_app" {
  description = "Path to the ECR repo with the API image"
}

variable "marquez_web_app" {
  description = "Path to the ECR repo with the proxy image"
}

variable "django_secret_key" {
  description = "Secret key for Django"
  sensitive   = true
}

variable "dns_zone_name" {
  description = "Domain name"
  default     = "adcb.local"
}

variable "subdomain" {
  description = "Subdomain for each environment"
  type        = map(string)
  default = {
    prod    = "api"
    staging = "api.staging"
    dev     = "api.dev"
  }
}
