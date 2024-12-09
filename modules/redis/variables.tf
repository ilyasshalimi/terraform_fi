variable "cluster_id" {}
variable "node_type" {
  default = "cache.t2.micro"
}
variable "num_cache_nodes" {
  default = 1
}
variable "parameter_group_name" {
  default = "default.redis6.x"
}
variable "subnet_group_name" {}
variable "security_group_ids" {
  type = list(string)
}
