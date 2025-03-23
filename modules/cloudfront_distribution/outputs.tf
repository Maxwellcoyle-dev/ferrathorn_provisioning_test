# modules/cloudfront_distribution/outputs.tf

output "cloudfront_distribution_domain_name" {
  value = aws_cloudfront_distribution.cdn.domain_name
}

output "cloudfront_oai_iam_arn" {
  value = aws_cloudfront_origin_access_identity.oai.iam_arn
}