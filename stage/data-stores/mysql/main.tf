provider "aws" {
  region = "us-east-2"
}

resource "aws_db_instance" "prem_tf_mysql_ec2" {
  identifier_prefix = "prem-tf-file_isolation"
  engine = "mysql"
  allow_major_version_upgrade = 10
  instance_class = "db.t2.micro"
  skip_final_snapshot = true
  db_name = "prem_tf_mysql"
}