variable "bucket_id" {
  type        = string
  description = "The bucket ID to apply the policy"
}

variable "cloudfront_oai_iam_arn" {
  type        = string
  description = "IAM ARN for CloudFront OAI"
}
