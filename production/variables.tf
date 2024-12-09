variable "cluster_name" {}
variable "cluster_role_arn" {}
variable "node_role_arn" {}
variable "subnet_ids" {
  type = list(string)
}
variable "eks_desired_size" {
  default = 2
}
variable "eks_max_size" {
  default = 5
}
variable "eks_min_size" {
  default = 1
}
variable "repository_name" {}

variable "rds_allocated_storage" {}
variable "rds_engine" {}
variable "rds_engine_version" {}
variable "rds_instance_class" {}
variable "rds_db_name" {}
variable "rds_username" {}
variable "rds_password" {}
variable "rds_security_group_ids" {
  type = list(string)
}
variable "rds_subnet_group_name" {}

variable "redis_cluster_id" {}
variable "redis_node_type" {}
variable "redis_num_cache_nodes" {}
variable "redis_parameter_group_name" {}
variable "redis_security_group_ids" {
  type = list(string)
}
variable "redis_subnet_group_name" {}

variable "s3_bucket_name" {}
variable "s3_acl" {}
variable "s3_force_destroy" {
  default = false
}
variable "s3_versioning_enabled" {
  default = true
}
