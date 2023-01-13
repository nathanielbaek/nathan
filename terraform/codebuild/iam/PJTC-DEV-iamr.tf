resource "aws_iam_role" "AmazonEKSNodeRole" {
    name               = "AmazonEKSNodeRole"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "anguk-test-lambda-role-k5yczcgs" {
    name               = "anguk-test-lambda-role-k5yczcgs"
    path               = "/service-role/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWS-QuickSetup-StackSet-Local-AdministrationRole" {
    name               = "AWS-QuickSetup-StackSet-Local-AdministrationRole"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWS-QuickSetup-StackSet-Local-ExecutionRole" {
    name               = "AWS-QuickSetup-StackSet-Local-ExecutionRole"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::364650154543:role/AWS-QuickSetup-StackSet-Local-AdministrationRole"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSReservedSSO_bespin-support-role_847709e58bcea5dd" {
    name               = "AWSReservedSSO_bespin-support-role_847709e58bcea5dd"
    path               = "/aws-reserved/sso.amazonaws.com/us-west-2/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::364650154543:saml-provider/AWSSSO_f3f835e96e9c7088_DO_NOT_DELETE"
      },
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      }
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForAmazonEKS" {
    name               = "AWSServiceRoleForAmazonEKS"
    path               = "/aws-service-role/eks.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForAmazonEKSNodegroup" {
    name               = "AWSServiceRoleForAmazonEKSNodegroup"
    path               = "/aws-service-role/eks-nodegroup.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks-nodegroup.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForAmazonSSM" {
    name               = "AWSServiceRoleForAmazonSSM"
    path               = "/aws-service-role/ssm.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ssm.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForAPIGateway" {
    name               = "AWSServiceRoleForAPIGateway"
    path               = "/aws-service-role/ops.apigateway.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ops.apigateway.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForApplicationAutoScaling_DynamoDBTable" {
    name               = "AWSServiceRoleForApplicationAutoScaling_DynamoDBTable"
    path               = "/aws-service-role/dynamodb.application-autoscaling.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "dynamodb.application-autoscaling.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForAutoScaling" {
    name               = "AWSServiceRoleForAutoScaling"
    path               = "/aws-service-role/autoscaling.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "autoscaling.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForAWSCloud9" {
    name               = "AWSServiceRoleForAWSCloud9"
    path               = "/aws-service-role/cloud9.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "cloud9.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForECS" {
    name               = "AWSServiceRoleForECS"
    path               = "/aws-service-role/ecs.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForElastiCache" {
    name               = "AWSServiceRoleForElastiCache"
    path               = "/aws-service-role/elasticache.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticache.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForElasticLoadBalancing" {
    name               = "AWSServiceRoleForElasticLoadBalancing"
    path               = "/aws-service-role/elasticloadbalancing.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticloadbalancing.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForGlobalAccelerator" {
    name               = "AWSServiceRoleForGlobalAccelerator"
    path               = "/aws-service-role/globalaccelerator.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "globalaccelerator.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForOrganizations" {
    name               = "AWSServiceRoleForOrganizations"
    path               = "/aws-service-role/organizations.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "organizations.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForRDS" {
    name               = "AWSServiceRoleForRDS"
    path               = "/aws-service-role/rds.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForSSO" {
    name               = "AWSServiceRoleForSSO"
    path               = "/aws-service-role/sso.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "sso.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForSupport" {
    name               = "AWSServiceRoleForSupport"
    path               = "/aws-service-role/support.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "support.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForSystemsManagerOpsDataSync" {
    name               = "AWSServiceRoleForSystemsManagerOpsDataSync"
    path               = "/aws-service-role/opsdatasync.ssm.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "opsdatasync.ssm.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "AWSServiceRoleForTrustedAdvisor" {
    name               = "AWSServiceRoleForTrustedAdvisor"
    path               = "/aws-service-role/trustedadvisor.amazonaws.com/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "trustedadvisor.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "bespin-support-role" {
    name               = "bespin-support-role"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::302563392760:root"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "catch-put-event-function-role-wwplmz5k" {
    name               = "catch-put-event-function-role-wwplmz5k"
    path               = "/service-role/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "cdk-hnb659fds-cfn-exec-role-364650154543-ap-northeast-2" {
    name               = "cdk-hnb659fds-cfn-exec-role-364650154543-ap-northeast-2"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "cdk-hnb659fds-deploy-role-364650154543-ap-northeast-2" {
    name               = "cdk-hnb659fds-deploy-role-364650154543-ap-northeast-2"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::364650154543:root"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "cdk-hnb659fds-file-publishing-role-364650154543-ap-northeast-2" {
    name               = "cdk-hnb659fds-file-publishing-role-364650154543-ap-northeast-2"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::364650154543:root"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "cdk-hnb659fds-image-publishing-role-364650154543-ap-northeast-2" {
    name               = "cdk-hnb659fds-image-publishing-role-364650154543-ap-northeast-2"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::364650154543:root"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "cdk-hnb659fds-lookup-role-364650154543-ap-northeast-2" {
    name               = "cdk-hnb659fds-lookup-role-364650154543-ap-northeast-2"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::364650154543:root"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "CloudWatch-CrossAccountSharingRole" {
    name               = "CloudWatch-CrossAccountSharingRole"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::364650154543:root"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "ec2-scheduler-instanceschedulerlambdaLambdaFunctio-17ZFT3PDQB6LW" {
    name               = "ec2-scheduler-instanceschedulerlambdaLambdaFunctio-17ZFT3PDQB6LW"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "ec2-scheduler-SchedulerRole-1T81CJVGYER02" {
    name               = "ec2-scheduler-SchedulerRole-1T81CJVGYER02"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "lambda.amazonaws.com",
          "events.amazonaws.com"
        ]
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "eksClusterRole" {
    name               = "eksClusterRole"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "eksctl-pjtc-eks-dev-cluster-1-cluster-ServiceRole-QKB69KBPLE35" {
    name               = "eksctl-pjtc-eks-dev-cluster-1-cluster-ServiceRole-QKB69KBPLE35"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "MythicalMysfits-CICD-BuildProjectRoleAA92C755-MGSJQR01AFXY" {
    name               = "MythicalMysfits-CICD-BuildProjectRoleAA92C755-MGSJQR01AFXY"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "MythicalMysfits-CICD-PipelineBuildCodePipelineActi-39HHSVXMD38M" {
    name               = "MythicalMysfits-CICD-PipelineBuildCodePipelineActi-39HHSVXMD38M"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::364650154543:root"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "MythicalMysfits-CICD-PipelineDeployDeployActionCod-15DYM25RG9PNK" {
    name               = "MythicalMysfits-CICD-PipelineDeployDeployActionCod-15DYM25RG9PNK"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::364650154543:root"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "MythicalMysfits-CICD-PipelineEventsRole46BEEA7C-8Q0ZJ7QC5WFH" {
    name               = "MythicalMysfits-CICD-PipelineEventsRole46BEEA7C-8Q0ZJ7QC5WFH"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "MythicalMysfits-CICD-PipelineRoleD68726F7-ITHMJ180XX0U" {
    name               = "MythicalMysfits-CICD-PipelineRoleD68726F7-ITHMJ180XX0U"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "MythicalMysfits-CICD-PipelineSourceCodeCommitSourc-UNZVPOOKWO5S" {
    name               = "MythicalMysfits-CICD-PipelineSourceCodeCommitSourc-UNZVPOOKWO5S"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::364650154543:root"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "MythicalMysfits-ECS-ServiceTaskDefExecutionRole919-2I89IN9QI1RV" {
    name               = "MythicalMysfits-ECS-ServiceTaskDefExecutionRole919-2I89IN9QI1RV"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "MythicalMysfits-ECS-ServiceTaskDefTaskRole0CFE2F57-1Q77V4VKJW65B" {
    name               = "MythicalMysfits-ECS-ServiceTaskDefTaskRole0CFE2F57-1Q77V4VKJW65B"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "MythicalMysfits-Website-CustomCDKBucketDeployment8-ZKIAWX4UKB18" {
    name               = "MythicalMysfits-Website-CustomCDKBucketDeployment8-ZKIAWX4UKB18"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "OpsItem-CWE-Role" {
    name               = "OpsItem-CWE-Role"
    path               = "/service-role/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "rds-monitoring-role" {
    name               = "rds-monitoring-role"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "monitoring.rds.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "rds-proxy-role-1658308373786" {
    name               = "rds-proxy-role-1658308373786"
    path               = "/service-role/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "rds-proxy-role-1660269338246" {
    name               = "rds-proxy-role-1660269338246"
    path               = "/service-role/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role" "SQS-VPCE-Tutorial-EC2InstanceRole-ap-northeast-2" {
    name               = "SQS-VPCE-Tutorial-EC2InstanceRole-ap-northeast-2"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

