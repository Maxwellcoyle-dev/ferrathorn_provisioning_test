variable "bucket_name" {
  type        = string
  description = "Unique bucket name provided by caller"
}

variable "allowed_referer" {
  type        = string
  description = "CloudFront domain to allow"
}
