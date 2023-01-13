resource "aws_db_subnet_group" "default-vpc-0d4646df276b9d89e" {
    name        = "default-vpc-0d4646df276b9d89e"
    description = "Created from the RDS Management Console"
    subnet_ids  = ["subnet-036503f3637909f36", "subnet-0ebcc614006f875bf", "subnet-0171166ffd477395a", "subnet-09e571b5451d8c138"]
}

resource "aws_db_subnet_group" "seonok-test-db-subnet-group" {
    name        = "seonok-test-db-subnet-group"
    description = "seonok-test-db-subnet-group"
    subnet_ids  = ["subnet-02a7ff77de70dbb42", "subnet-0905e56639c8621c7"]
}

