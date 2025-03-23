resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = var.bucket_id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow",
      Principal = {
        AWS = var.cloudfront_oai_iam_arn
      },
      Action   = ["s3:GetObject"],
      Resource = ["arn:aws:s3:::${var.bucket_id}/*"]
    }]
  })
}
