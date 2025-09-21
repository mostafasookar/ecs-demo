variable "prefix" {
  description = "Prefix for resources in AWS"
  default     = "pgadmin and marquez"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "pgadmin and marquez"
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
  description = "Password for the Terraform database"
}

