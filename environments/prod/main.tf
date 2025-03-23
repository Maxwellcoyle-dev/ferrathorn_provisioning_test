module "s3_website" {
  source          = "../../modules/s3_website"
  aws_region      = var.aws_region
  bucket_name     = var.bucket_name_terraform_test_gymapp_prod
  customer_name   = var.customer_name_terraform_test_gymapp_prod
  allowed_referer = var.allowed_referer_terraform_test_gymapp_prod
}

module "cloudfront" {
  source                 = "../../modules/cloudfront_distribution"
  s3_bucket_domain_name  = module.s3_website.website_endpoint
  origin_id              = "gym-s3-origin-${var.customer_name_terraform_test_gymapp_prod}"
}