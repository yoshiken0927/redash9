provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_elasticache_cluster" "redash" {
  cluster_id           = "redash"
  engine               = "redis"
  engine_version       = "5.0.6"
  port                 = 6379
  parameter_group_name = "default.redis5.0"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
}
