data "aws_caller_identity" "current" {}

locals {
  # The Amplify app is created + GitHub-App-connected in the console. Its ARN is
  # exported for the central deploy role's scoping (see below).
  amplify_app_arn = "arn:aws:amplify:${var.aws_region}:${data.aws_caller_identity.current.account_id}:apps/${var.amplify_app_id}"
}

# The GitHub Actions deploy role (gha-246labs-deploy) and its amplify-deploy policy moved to the
# central infra repo chrisfixesit/tofu-or-not-tofu (accounts/246labs/github-deploy) on 2026-11-06.
# This stack no longer creates it; change it there.
# The rest of this stack follows in that repo's Plan 3.
