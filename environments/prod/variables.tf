variable "aws_region" {
  type        = string
  description = "AWS region for resources"
}

variable "customer_name" {
  type        = string
  description = "Customer-specific identifier"
}

variable "bucket_name" {
  type        = string
  description = "S3 Bucket name for customer"
}

variable "allowed_referer" {
  type        = string
  description = "CloudFront distribution URL"
}
