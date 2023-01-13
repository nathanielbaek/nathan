resource "aws_dynamodb_table" "ec2-scheduler-ConfigTable-BZZ707NYGY2D" {
    name = "ec2-scheduler-ConfigTable-BZZ707NYGY2D"
    read_capacity = 0
    write_capacity = 0
    hash_key = "type"
    range_key = "name"

    attribute {
        name = "name"
        type = "S"
    }
    attribute {
        name = "type"
        type = "S"
    }
    server_side_encryption {
        enabled = true
    }
}
resource "aws_dynamodb_table" "ec2-scheduler-MaintenanceWindowTable-XPSBCU1GW16F" {
    name = "ec2-scheduler-MaintenanceWindowTable-XPSBCU1GW16F"
    read_capacity = 0
    write_capacity = 0
    hash_key = "Name"

    attribute {
        name = "Name"
        type = "S"
    }
    server_side_encryption {
        enabled = true
    }
}
resource "aws_dynamodb_table" "ec2-scheduler-StateTable-I2LJK6V7S7ZC" {
    name = "ec2-scheduler-StateTable-I2LJK6V7S7ZC"
    read_capacity = 0
    write_capacity = 0
    hash_key = "service"
    range_key = "account-region"

    attribute {
        name = "account-region"
        type = "S"
    }
    attribute {
        name = "service"
        type = "S"
    }
    server_side_encryption {
        enabled = true
    }
}
