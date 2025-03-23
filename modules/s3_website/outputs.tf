output "website_endpoint" {
  value = aws_s3_bucket_website_configuration.website_config.website_endpoint
  description = "The endpoint URL of the S3 bucket website configuration"
}