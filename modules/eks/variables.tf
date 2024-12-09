variable "cluster_name" {}
variable "cluster_role_arn" {}
variable "node_role_arn" {}
variable "subnet_ids" {
  type = list(string)
}
variable "desired_size" {
  default = 2
}
variable "max_size" {
  default = 5
}
variable "min_size" {
  default = 1
}
