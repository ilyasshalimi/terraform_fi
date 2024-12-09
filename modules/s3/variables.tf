variable "bucket_name" {}
variable "acl" {
  default = "private"
}
variable "force_destroy" {
  default = false
}
variable "versioning_enabled" {
  default = true
}
