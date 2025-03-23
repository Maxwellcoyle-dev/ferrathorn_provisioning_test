# modules/s3_website/variables.tf

variable "bucket_name" {
  type        = string
  description = "Unique bucket name provided by caller"
}