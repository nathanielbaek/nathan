resource "aws_route_table" "rtb-0878a3d05c51d8265" {
    vpc_id     = "vpc-0d4646df276b9d89e"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "igw-04fb219f9875a3524"
    }

    tags {
    }
}

