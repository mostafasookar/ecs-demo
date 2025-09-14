output "cd_user_access_key_id" {
  description = "Access key ID for CD user"
  value       = aws_iam_access_key.cd.id
}

output "cd_user_access_key_secret" {
  description = "Access key secret for CD user"
  value       = aws_iam_access_key.cd.secret
  sensitive   = true
}


output "ecr_repo_marquez-api-app" {
  description = "ECR repository URL for app image"
  value       = aws_ecr_repository.marquez-api-app.repository_url
}

output "ecr_repo_marquez-web-app" {
  description = "ECR repository URL for the proxy image"
  value       = aws_ecr_repository.marquez-web-app.repository_url
}

output "ecr_repo_pgadmin-app" {
  description = "ECR repository URL for the proxy image"
  value       = aws_ecr_repository.pgadmin-app.repository_url
}
