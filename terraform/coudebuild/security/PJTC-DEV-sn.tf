resource "aws_subnet" "subnet-09e571b5451d8c138-devsub1" {
    vpc_id                  = "vpc-0d4646df276b9d89e"
    cidr_block              = "172.31.16.0/20"
    availability_zone       = "ap-northeast-2b"
    map_public_ip_on_launch = true

    tags {
        "kubernetes.io/cluster/dev-eks-cluster1" = "shared"
        "kubernetes.io/role/elb" = "1"
        "kubernetes.io/cluster/dev-eks-cluster-1" = "shared"
        "Name" = "devsub1"
    }
}

resource "aws_subnet" "subnet-0171166ffd477395a-devsub2" {
    vpc_id                  = "vpc-0d4646df276b9d89e"
    cidr_block              = "172.31.32.0/20"
    availability_zone       = "ap-northeast-2c"
    map_public_ip_on_launch = true

    tags {
        "Name" = "devsub2"
        "kubernetes.io/role/elb" = "1"
        "kubernetes.io/cluster/dev-eks-cluster-1" = "shared"
        "kubernetes.io/cluster/dev-eks-cluster1" = "shared"
    }
}

resource "aws_subnet" "subnet-0ebcc614006f875bf-devsub3" {
    vpc_id                  = "vpc-0d4646df276b9d89e"
    cidr_block              = "172.31.0.0/20"
    availability_zone       = "ap-northeast-2a"
    map_public_ip_on_launch = true

    tags {
        "kubernetes.io/cluster/dev-eks-cluster-1" = "shared"
        "kubernetes.io/role/elb" = "1"
        "kubernetes.io/cluster/dev-eks-cluster1" = "shared"
        "Name" = "devsub3"
    }
}

resource "aws_subnet" "subnet-036503f3637909f36-devsub4" {
    vpc_id                  = "vpc-0d4646df276b9d89e"
    cidr_block              = "172.31.48.0/20"
    availability_zone       = "ap-northeast-2d"
    map_public_ip_on_launch = true

    tags {
        "kubernetes.io/cluster/dev-eks-cluster-1" = "shared"
        "Name" = "devsub4"
        "kubernetes.io/cluster/dev-eks-cluster1" = "shared"
        "kubernetes.io/role/elb" = "1"
    }
}
