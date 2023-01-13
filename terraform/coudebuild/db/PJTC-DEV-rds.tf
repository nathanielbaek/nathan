resource "aws_db_instance" "pjtc-dev-db-1-instance-1" {
    identifier                = "pjtc-dev-db-1-instance-1"
    allocated_storage         = 1
    storage_type              = "aurora"
    engine                    = "aurora-mysql"
    engine_version            = "5.7.mysql_aurora.2.10.2"
    instance_class            = "db.t4g.large"
    name                      = ""
    username                  = "admin"
    password                  = "xxxxxxxx"
    port                      = 3306
    publicly_accessible       = true
    availability_zone         = "ap-northeast-2c"
    security_group_names      = []
    vpc_security_group_ids    = ["sg-0e239b554ba73830b"]
    db_subnet_group_name      = "default-vpc-0d4646df276b9d89e"
    parameter_group_name      = "default.aurora-mysql5.7"
    multi_az                  = false
    backup_retention_period   = 1
    backup_window             = "20:11-20:41"
    maintenance_window        = "wed:14:34-wed:15:04"
    final_snapshot_identifier = "pjtc-dev-db-1-instance-1-final"
}
resource "aws_db_instance" "test-instance-2" {
    identifier                = "test-instance-2"
    allocated_storage         = 1
    storage_type              = "aurora"
    engine                    = "aurora-mysql"
    engine_version            = "5.7.mysql_aurora.2.10.2"
    instance_class            = "db.t4g.large"
    name                      = ""
    username                  = "admin"
    password                  = "xxxxxxxx"
    port                      = 3306
    publicly_accessible       = true
    availability_zone         = "ap-northeast-2b"
    security_group_names      = []
    vpc_security_group_ids    = ["sg-0e239b554ba73830b"]
    db_subnet_group_name      = "default-vpc-0d4646df276b9d89e"
    parameter_group_name      = "default.aurora-mysql5.7"
    multi_az                  = false
    backup_retention_period   = 1
    backup_window             = "20:11-20:41"
    maintenance_window        = "wed:14:34-wed:15:04"
    final_snapshot_identifier = "test-instance-2-final"
}
