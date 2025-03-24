# environments/dev/main.tf

# Step 1: S3 Bucket creation first
module "s3_bucket" {
  source      = "../../modules/s3_website"
  bucket_name = "gym-${var.customer_name}-bucket-dev"
}

# Step 2: CloudFront distribution (depends on bucket endpoint)
module "cloudfront" {
  source                = "../../modules/cloudfront_distribution"
  s3_bucket_domain_name = module.s3_bucket.bucket_regional_domain_name
  origin_id             = "gym-s3-origin-${var.customer_name}"
}

# Step 3: S3 Bucket Policy (depends on bucket and cloudfront OAI ARN)
module "s3_bucket_policy" {
  source                  = "../../modules/s3_bucket_policy"
  bucket_id               = module.s3_bucket.bucket_id
  cloudfront_oai_iam_arn  = module.cloudfront.cloudfront_oai_iam_arn
}

