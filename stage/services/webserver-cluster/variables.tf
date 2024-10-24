variable "server_port" {
	description="the http server port"
	type = number
}

 variable "vpc_id" {
	default = "vpc-09792a9f84354af94"
}

variable "subnet_ids" {
	type = list
	default = ["subnet-0649540fd252af299", "subnet-0b18f02a369f36f77" ]
}
