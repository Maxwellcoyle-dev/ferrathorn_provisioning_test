# modules/s3_website/variables.tf

variable "bucket_name" {
  type        = string
  description = "Unique bucket name provided by caller"
}

variable "allowed_referer" {
  type        = string
  description = "CloudFront domain to allow"
}

variable "cloudfront_oai_iam_arn" {
  description = "IAM ARN for CloudFront OAI"
  type        = string
}