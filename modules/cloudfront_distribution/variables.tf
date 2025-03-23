variable "s3_bucket_domain_name" {
  type        = string
  description = "Website endpoint of S3 bucket"
}

variable "origin_id" {
  type        = string
  description = "Unique Origin ID for CloudFront"
}
