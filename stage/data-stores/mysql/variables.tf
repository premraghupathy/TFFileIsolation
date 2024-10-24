variable "db_username" {
  description = "the user name"
  type = string
  // implies TF will not log this value
  sensitive = true
}
variable "db_password" {
  description = "the password"
  type = string
  sensitive = true
}