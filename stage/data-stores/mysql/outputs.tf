output "address" {
  value = aws_db_instance.prem_tf_mysql_ec2.address
  description = "The endpoint to connet to mysql"
}

output "port" {
  value = aws_db_instance.prem_tf_mysql_ec2.port
  description = "The port of mysql"
}