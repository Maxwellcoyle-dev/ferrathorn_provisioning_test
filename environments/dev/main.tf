module "s3_website" {
  source          = "../../modules/s3_website"
  bucket_name     = "gym-${var.customer_name}-bucket-dev"
  allowed_referer = "gym-${var.customer_name}-dev.cloudfront.net"
}

module "cloudfront" {
  source                = "../../modules/cloudfront_distribution"
  s3_bucket_domain_name = module.s3_website.website_endpoint
  origin_id             = "gym-s3-origin-${var.customer_name}"
}
