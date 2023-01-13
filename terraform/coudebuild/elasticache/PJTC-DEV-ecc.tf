resource "aws_elasticache_cluster" "dev-redis1-001" {
    cluster_id             = "dev-redis1-001"
    engine                 = "redis"
    engine_version         = "6.2.6"
    node_type              = "cache.t3.micro"
    num_cache_nodes        = 1
    parameter_group_name   = "default.redis6.x"
    port                   = 6379
    subnet_group_name      = "subnet-dev1"
    security_group_ids     = []
}
