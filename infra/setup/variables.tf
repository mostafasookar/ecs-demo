variable "tf_state_bucket" {
  description = "Name of S3 bucket in AWS for storing TF state"
  default     = "devops-ecs-adcb-2025"
}

variable "tf_state_lock_table" {
  description = "Name of DynamoDB table for TF state locking"
  default     = "devops-ecs-adcb-tf-lock"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "pgadmin and marquez"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "mostafa.sokkar.99@gmail.com"
}
