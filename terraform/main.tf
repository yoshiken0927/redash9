provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_db_instance" "redash" {
  identifier           = "redash"
  engine               = "postgres"
  engine_version       = "9.6"
  name                 = "redash"
  username             = "redash"
  password             = "パスワード"
  instance_class       = "db.t3.micro"
  storage_type         = "gp2"
  allocated_storage    = 10
  parameter_group_name = "default.postgres9.6"
  skip_final_snapshot  = true
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
