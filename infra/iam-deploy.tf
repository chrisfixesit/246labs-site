data "aws_caller_identity" "current" {}

locals {
  # The Amplify app is created + GitHub-App-connected in the console; Terraform
  # scopes the deploy role to that app's ARN (no wildcard across apps).
  amplify_app_arn = "arn:aws:amplify:${var.aws_region}:${data.aws_caller_identity.current.account_id}:apps/${var.amplify_app_id}"
}

# The GitHub Actions deploy role (gha-246labs-deploy) and its amplify-deploy policy moved to the
# central infra repo chrisfixesit/tofu-or-not-tofu (accounts/246labs/github-deploy) on 2026-11-06,
# Change it there.
# The rest of this stack follows in that repo's Plan 3.
