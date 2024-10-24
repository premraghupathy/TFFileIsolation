provider "aws" {
  region = "us-east-1"
}
data "aws_db_subnet_group" "database" {
  name = "prem_tf_poc_db_subnet_gp"
}

resource "aws_db_instance" "prem_tf_mysql_ec2" {
  identifier_prefix = "prem-tf-file-isolation"
  engine = "mysql"
  allocated_storage = 10
  instance_class = "db.t4g.micro"
  db_subnet_group_name   =data.aws_db_subnet_group.database.name
  skip_final_snapshot = true
  db_name = "prem_tf_mysql"

  username = var.db_username
  password = var.db_password
}

terraform {
  backend "s3" {
    bucket = "prem-tf-state-s3"
    key = "stage/data-store/mysql/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "prem-tf-state-lock-dyna"
    encrypt = true
  }
}
