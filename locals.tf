locals {
  default_tags = {
    Service        = var.service_name
    FeatureName    = var.feature_name
    OwnerEmail     = var.owner_email
    TechOwnerEmail = var.tech_owner_email
    Environment    = var.environment
    Squad          = var.squad
    FinOps         = var.finops
    RepoName       = var.repo_name
    Pipeline       = var.pipeline
    Tier           = var.tier
    AccountID      = var.account_id
  }
}