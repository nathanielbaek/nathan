resource "aws_iam_group_membership" "Admin-Group" {
    name  = "Admin-Group-group-membership"
    users = ["lhk8710", "dev-pub1", "seonok", "hyjung0801", "ohbaek", "anguklee"]
    group = "Admin-Group"
}

