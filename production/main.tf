module "eks" {
  source          = "../../modules/eks"
  cluster_name    = var.cluster_name
  cluster_role_arn = var.cluster_role_arn
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids
  desired_size    = var.eks_desired_size
  max_size        = var.eks_max_size
  min_size        = var.eks_min_size
}

module "ecr" {
  source          = "../../modules/ecr"
  repository_name = var.repository_name
}

module "rds" {
  source              = "../../modules/rds"
  allocated_storage   = var.rds_allocated_storage
  engine              = var.rds_engine
  engine_version      = var.rds_engine_version
  instance_class      = var.rds_instance_class
  db_name             = var.rds_db_name
  username            = var.rds_username
  password            = var.rds_password
  security_group_ids  = var.rds_security_group_ids
  subnet_group_name   = var.rds_subnet_group_name
}

module "redis" {
  source              = "../../modules/redis"
  cluster_id          = var.redis_cluster_id
  node_type           = var.redis_node_type
  num_cache_nodes     = var.redis_num_cache_nodes
  parameter_group_name = var.redis_parameter_group_name
  subnet_group_name   = var.redis_subnet_group_name
  security_group_ids  = var.redis_security_group_ids
}

module "s3" {
  source              = "../../modules/s3"
  bucket_name         = var.s3_bucket_name
  acl                 = var.s3_acl
  force_destroy       = var.s3_force_destroy
  versioning_enabled  = var.s3_versioning_enabled
}
