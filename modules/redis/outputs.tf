output "redis_endpoint" {
  value = aws_elasticache_cluster.this.configuration_endpoint_address
}
