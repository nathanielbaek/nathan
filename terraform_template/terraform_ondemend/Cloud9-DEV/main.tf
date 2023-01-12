########## 1. VPC ##########

resource "aws_vpc" "this" {
    cidr_block = var.vpc_cidr
    #instance_tenancy = "default"

    enable_dns_hostnames = true

    tags = merge(
        {
            Name = format("%s-vpc", var.name)
        },
        var.tags
    )
}

resource "aws_subnet" "public" {
    count   = length(var.public_subnets)

    vpc_id  = aws_vpc.this.id     #VPC_ID

    availability_zone   = var.public_subnets[count.index].zone
    cidr_block  = var.public_subnets[count.index].cidr

    # AUTO-ASIGN PUBLIC IP
    map_public_ip_on_launch = true

    tags = merge(
        {
            Name = format(
                "%s-public-%s",
                var.name,
                element(split("", var.public_subnets[count.index].zone), length(var.public_subnets[count.index].zone) - 1)
            )
        },
        var.tags,
    )
}

resource "aws_subnet" "private" {
    count   = length(var.private_subnets)

    vpc_id  = aws_vpc.this.id

    availability_zone   = var.private_subnets[count.index].zone
    cidr_block  = var.private_subnets[count.index].cidr

    tags = merge(
        {
            Name = format(
                "%s-private-%s",
                var.name,
                element(split("", var.private_subnets[count.index].zone), length(var.private_subnets[count.index].zone) - 1)
            )
        },
        var.tags,
    )
}

resource "aws_route_table" "public" {

    vpc_id  = aws_vpc.this.id

    tags    = merge(
        {
            Name = format(
                "%s-public-rt",
                var.name,
            )
        },
        var.tags,
    )
}

resource "aws_route_table" "private" {

    vpc_id  = aws_vpc.this.id

    tags    = merge(
        {
            Name = format(
                "%s-private-rt",
                var.name,
            )
        },
        var.tags,
    )
}

resource "aws_route_table_association" "public" {
    count   = length(var.public_subnets)

    subnet_id   = aws_subnet.public[count.index].id
    route_table_id  = aws_route_table.public.id
}

resource "aws_route_table_association" "private" {
    count   = length(var.private_subnets)

    subnet_id   = aws_subnet.private[count.index].id
    route_table_id  = aws_route_table.private.id
}

########## Gateway Config ##########

resource "aws_internet_gateway" "this" {
    vpc_id  = aws_vpc.this.id

    tags = merge(
        {
            Name = format("%s-igw", var.name)
        },
        var.tags
    )
}

resource "aws_eip" "nat" {
    vpc = true

    depends_on = [aws_route_table.public]

    tags = merge(
        {
            Name = format(
                "%s-nat-eip-%s",
                var.name,
                element(split("", var.public_subnets[0].zone), length(var.public_subnets[0].zone) - 1)
            )
        },
        var.tags
    )
}

resource "aws_nat_gateway" "this" {
    subnet_id  = aws_subnet.public[0].id
    allocation_id = aws_eip.nat.id

    tags = merge(
        {
            Name = format(
                "%s-nat-%s",
                var.name,
                element(split("", var.public_subnets[0].zone), length(var.public_subnets[0].zone) - 1)
            )
        },
        var.tags
    )
}

########## Routing ##########

resource "aws_route" "public" {

    route_table_id  = aws_route_table.public.id
    destination_cidr_block  = "0.0.0.0/0"

    # IGW(Internet Gateway)
    gateway_id      = aws_internet_gateway.this.id

    timeouts {
        create = "5m"
    }
}

resource "aws_route" "private" {

    route_table_id  = aws_route_table.private.id
    destination_cidr_block  = "0.0.0.0/0"

    # NAT Gateway
    nat_gateway_id      = aws_nat_gateway.this.id

    timeouts {
        create = "5m"
    }
}

########## 2. Security ##########

resource "aws_security_group" "server" {
    name    = format("%s-%s-sg", var.name, "server")
    description = "security group for ${var.name}"

    vpc_id  = aws_vpc.this.id

    egress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        self = true
        description = "self refer"
    }

    ingress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        self = true
        description = "self refer"
    }

    # ALL
    egress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = "all"
    }

    # SSH
    ingress {
        from_port = "22"
        to_port = "22"
        protocol = "tcp"
        cidr_blocks = var.allow_ip_address
        description = "from my ip"
    }

    # HTTP
    ingress {
        from_port = "80"
        to_port = "80"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "all http traffic"
    }

    tags = merge(
        {
            Name = format(
                "%s-server-sg",
                var.name
            )
        },
        var.tags
    )
}

########## 3. EC2 ##########

resource "aws_instance" "server" {
    ami = "ami-0bea7fd38fabe821a"     #AMI_ID
    instance_type = "m4.10xlarge"        #Instance_TYPE_40core_160GB

    key_name = var.key_name

    user_data = "#include https://go.aws/38GIqcB"

    vpc_security_group_ids = [aws_security_group.server.id]
    subnet_id = aws_subnet.public[0].id

    root_block_device {
        volume_size = 500
        volume_type = "gp2"  #general_SSD_iops16000
        delete_on_termination = true
    }

    tags = merge(
        {
            Name = format(
                "%s-server",
                var.name
            )
        },
        var.tags
    )
}

resource "aws_eip" "server" {
    vpc = true

    depends_on = [aws_route_table.public]
    instance = aws_instance.server.id

    tags = merge(
        {
            Name = format(
                "%s-server-eip-%s",
                var.name,
                element(split("", var.public_subnets[0].zone), length(var.public_subnets[0].zone) - 1)
            )
        },
        var.tags
    )
}
