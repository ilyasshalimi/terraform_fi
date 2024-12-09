cluster_name           = "production-eks-cluster"
cluster_role_arn       = "arn:aws:iam::123456789012:role/EKSClusterRole"
node_role_arn          = "arn:aws:iam::123456789012:role/EKSNodeRole"
subnet_ids             = ["subnet-12345", "subnet-67890"]
repository_name        = "production-app-repository"

rds_allocated_storage  = 50
rds_engine             = "postgres"
rds_engine_version     = "13.4"
rds_instance_class     = "db.t3.medium"
rds_db_name            = "productiondb"
rds_username           = "admin"
rds_password           = "securepassword"
rds_security_group_ids = ["sg-12345"]
rds_subnet_group_name  = "rds-subnet-group"

redis_cluster_id       = "production-redis-cluster"
redis_node_type        = "cache.t3.micro"
redis_num_cache_nodes  = 1
redis_parameter_group_name = "default.redis6.x"
redis_security_group_ids = ["sg-56789"]
redis_subnet_group_name = "redis-subnet-group"

s3_bucket_name         = "production-app-bucket"
s3_acl                 = "private"
s3_force_destroy       = true
s3_versioning_enabled  = true
