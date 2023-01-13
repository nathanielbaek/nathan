resource "aws_elasticache_subnet_group" "subnet-dev1" {
    name        = "subnet-dev1"
    description = " "
    subnet_ids  = ["subnet-036503f3637909f36", "subnet-0ebcc614006f875bf", "subnet-0171166ffd477395a", "subnet-09e571b5451d8c138"]
}
