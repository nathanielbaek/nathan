resource "aws_iam_instance_profile" "EC2InstanceProfile-ap-northeast-2" {
    name = "EC2InstanceProfile-ap-northeast-2"
    path = "/"
    role = "SQS-VPCE-Tutorial-EC2InstanceRole-ap-northeast-2"
}

resource "aws_iam_instance_profile" "eks-20c0ffd7-7bcc-7989-277d-4c941b176d5a" {
    name = "eks-20c0ffd7-7bcc-7989-277d-4c941b176d5a"
    path = "/"
    role = "AmazonEKSNodeRole"
}

