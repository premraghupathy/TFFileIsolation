output "prem_tf_state_s3_arn" {
  value = aws_s3_bucket.prem_tf_state_s3.arn
  description = "Prem TF state S3 ARN"
}

output "prem_tf_state_dynamodb_table_name" {
  value = aws_dynamodb_table.prem_tf_state_lock_dyna.name
  description = "Prem TF state lock dynamodb table name"
}