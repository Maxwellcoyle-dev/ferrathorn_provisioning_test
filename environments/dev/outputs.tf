output "cloudfront_distribution_domain_name" {
  value = module.cloudfront.cloudfront_distribution_domain_name
}

output "s3_bucket_name" {
  value = module.s3_bucket.bucket_id
}