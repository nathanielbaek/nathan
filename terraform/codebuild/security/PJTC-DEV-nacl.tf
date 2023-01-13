resource "aws_network_acl" "acl-030d7669a59d53c9d" {
    vpc_id     = "vpc-0d4646df276b9d89e"
    subnet_ids = ["subnet-036503f3637909f36", "subnet-09e571b5451d8c138", "subnet-0ebcc614006f875bf", "subnet-0171166ffd477395a"]

    ingress {
        from_port  = 0
        to_port    = 0
        rule_no    = 100
        action     = "allow"
        protocol   = "-1"
        cidr_block = "0.0.0.0/0"
    }

    egress {
        from_port  = 0
        to_port    = 0
        rule_no    = 100
        action     = "allow"
        protocol   = "-1"
        cidr_block = "0.0.0.0/0"
    }

    tags {
    }
}

