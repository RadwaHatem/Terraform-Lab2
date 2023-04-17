resource "aws_elasticache_cluster" "my-elasticache" {
    cluster_id = "my-elasticache"
    engine = "redis"
    node_type = "cache.t2.micro"
    num_cache_nodes = 1
    security_group_ids = [aws_security_group.elasticache-sg.id]
    subnet_group_name = "elasticache-subnet-group"
}


resource "aws_elasticache_subnet_group" "elasticache-subnet-group" {
  
  name       = "elasticache-subnet-group"
  subnet_ids = [module.my-network.priv_sub_1,module.my-network.priv_sub_2]
  
}