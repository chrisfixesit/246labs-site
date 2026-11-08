output "deploy_role_arn" {
  # Built, not looked up: the role is created in tofu-or-not-tofu after this stack's OIDC provider.
  value       = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/gha-246labs-deploy"
  description = "Role ARN for the GitHub Actions AWS_DEPLOY_ROLE_ARN variable"
}

output "amplify_compute_role_arn" {
  value       = aws_iam_role.amplify_compute.arn
  description = "Attach to the console-created Amplify app as its compute/service role (grants SSR runtime ses:SendEmail)"
}

output "amplify_app_arn" {
  value       = local.amplify_app_arn
  description = "ARN the deploy role is scoped to (from var.amplify_app_id)"
}
