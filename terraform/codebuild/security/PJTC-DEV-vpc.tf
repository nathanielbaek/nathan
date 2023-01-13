resource "aws_vpc" "PJTC-DEV-VPC-1" {
    cidr_block           = "172.31.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support   = true
    instance_tenancy     = "default"

    tags {
        "Name" = "PJTC-DEV-VPC-1"
    }
}

