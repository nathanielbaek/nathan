resource "aws_iam_role_policy" "AWS-QuickSetup-StackSet-Local-AdministrationRole_AssumeRole-AWS-QuickSetup-StackSet-Local-ExecutionRole" {
    name   = "AssumeRole-AWS-QuickSetup-StackSet-Local-ExecutionRole"
    role   = "AWS-QuickSetup-StackSet-Local-AdministrationRole"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "sts:AssumeRole"
      ],
      "Resource": [
        "arn:*:iam::*:role/AWS-QuickSetup-StackSet-Local-ExecutionRole"
      ],
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "cdk-hnb659fds-deploy-role-364650154543-ap-northeast-2_default" {
    name   = "default"
    role   = "cdk-hnb659fds-deploy-role-364650154543-ap-northeast-2"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:DescribeStacks",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:CreateStack",
        "cloudformation:UpdateStack"
      ],
      "Resource": "*",
      "Effect": "Allow",
      "Sid": "CloudFormationPermissions"
    },
    {
      "Condition": {
        "StringNotEquals": {
          "s3:ResourceAccount": "364650154543"
        }
      },
      "Action": [
        "s3:GetObject*",
        "s3:GetBucket*",
        "s3:List*",
        "s3:Abort*",
        "s3:DeleteObject*",
        "s3:PutObject*"
      ],
      "Resource": "*",
      "Effect": "Allow",
      "Sid": "PipelineCrossAccountArtifactsBucket"
    },
    {
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "s3.ap-northeast-2.amazonaws.com"
        }
      },
      "Action": [
        "kms:Decrypt",
        "kms:DescribeKey",
        "kms:Encrypt",
        "kms:ReEncrypt*",
        "kms:GenerateDataKey*"
      ],
      "Resource": "*",
      "Effect": "Allow",
      "Sid": "PipelineCrossAccountArtifactsKey"
    },
    {
      "Action": "iam:PassRole",
      "Resource": "arn:aws:iam::364650154543:role/cdk-hnb659fds-cfn-exec-role-364650154543-ap-northeast-2",
      "Effect": "Allow"
    },
    {
      "Action": [
        "cloudformation:DescribeStackEvents",
        "cloudformation:GetTemplate",
        "cloudformation:DeleteStack",
        "cloudformation:UpdateTerminationProtection",
        "sts:GetCallerIdentity",
        "cloudformation:GetTemplateSummary"
      ],
      "Resource": "*",
      "Effect": "Allow",
      "Sid": "CliPermissions"
    },
    {
      "Action": [
        "s3:GetObject*",
        "s3:GetBucket*",
        "s3:List*"
      ],
      "Resource": [
        "arn:aws:s3:::cdk-hnb659fds-assets-364650154543-ap-northeast-2",
        "arn:aws:s3:::cdk-hnb659fds-assets-364650154543-ap-northeast-2/*"
      ],
      "Effect": "Allow",
      "Sid": "CliStagingBucket"
    },
    {
      "Action": [
        "ssm:GetParameter"
      ],
      "Resource": [
        "arn:aws:ssm:ap-northeast-2:364650154543:parameter/cdk-bootstrap/hnb659fds/version"
      ],
      "Effect": "Allow",
      "Sid": "ReadVersion"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "cdk-hnb659fds-file-publishing-role-364650154543-ap-northeast-2_cdk-hnb659fds-file-publishing-role-default-policy-364650154543-ap-northeast-2" {
    name   = "cdk-hnb659fds-file-publishing-role-default-policy-364650154543-ap-northeast-2"
    role   = "cdk-hnb659fds-file-publishing-role-364650154543-ap-northeast-2"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:GetObject*",
        "s3:GetBucket*",
        "s3:GetEncryptionConfiguration",
        "s3:List*",
        "s3:DeleteObject*",
        "s3:PutObject*",
        "s3:Abort*"
      ],
      "Resource": [
        "arn:aws:s3:::cdk-hnb659fds-assets-364650154543-ap-northeast-2",
        "arn:aws:s3:::cdk-hnb659fds-assets-364650154543-ap-northeast-2/*"
      ],
      "Effect": "Allow"
    },
    {
      "Action": [
        "kms:Decrypt",
        "kms:DescribeKey",
        "kms:Encrypt",
        "kms:ReEncrypt*",
        "kms:GenerateDataKey*"
      ],
      "Resource": "arn:aws:kms:ap-northeast-2:364650154543:key/AWS_MANAGED_KEY",
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "cdk-hnb659fds-image-publishing-role-364650154543-ap-northeast-2_cdk-hnb659fds-image-publishing-role-default-policy-364650154543-ap-northeast-2" {
    name   = "cdk-hnb659fds-image-publishing-role-default-policy-364650154543-ap-northeast-2"
    role   = "cdk-hnb659fds-image-publishing-role-364650154543-ap-northeast-2"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload",
        "ecr:BatchCheckLayerAvailability",
        "ecr:DescribeRepositories",
        "ecr:DescribeImages",
        "ecr:BatchGetImage",
        "ecr:GetDownloadUrlForLayer"
      ],
      "Resource": "arn:aws:ecr:ap-northeast-2:364650154543:repository/cdk-hnb659fds-container-assets-364650154543-ap-northeast-2",
      "Effect": "Allow"
    },
    {
      "Action": [
        "ecr:GetAuthorizationToken"
      ],
      "Resource": "*",
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "cdk-hnb659fds-lookup-role-364650154543-ap-northeast-2_LookupRolePolicy" {
    name   = "LookupRolePolicy"
    role   = "cdk-hnb659fds-lookup-role-364650154543-ap-northeast-2"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Resource": "*",
      "Effect": "Deny",
      "Sid": "DontReadSecrets"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "ec2-scheduler-instanceschedulerlambdaLambdaFunctio-17ZFT3PDQB6LW_LambdaFunctionServiceRolePolicy" {
    name   = "LambdaFunctionServiceRolePolicy"
    role   = "ec2-scheduler-instanceschedulerlambdaLambdaFunctio-17ZFT3PDQB6LW"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": "arn:aws:logs:ap-northeast-2:364650154543:log-group:/aws/lambda/*",
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "ec2-scheduler-SchedulerRole-1T81CJVGYER02_EC2DynamoDBPolicy" {
    name   = "EC2DynamoDBPolicy"
    role   = "ec2-scheduler-SchedulerRole-1T81CJVGYER02"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Resource": "arn:aws:iam::*:role/*EC2SchedulerCross*",
      "Effect": "Allow"
    },
    {
      "Action": [
        "ssm:GetParameter",
        "ssm:GetParameters"
      ],
      "Resource": "arn:aws:ssm:*:364650154543:parameter/*",
      "Effect": "Allow"
    },
    {
      "Action": [
        "logs:DescribeLogStreams",
        "rds:DescribeDBClusters",
        "rds:DescribeDBInstances",
        "ec2:DescribeInstances",
        "ec2:DescribeRegions",
        "ec2:ModifyInstanceAttribute",
        "cloudwatch:PutMetricData",
        "ssm:DescribeMaintenanceWindows",
        "tag:GetResources"
      ],
      "Resource": "*",
      "Effect": "Allow"
    },
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:PutRetentionPolicy"
      ],
      "Resource": [
        "arn:aws:logs:ap-northeast-2:364650154543:log-group:/aws/lambda/*",
        "arn:aws:logs:ap-northeast-2:364650154543:log-group:ec2-scheduler-logs:*"
      ],
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "ec2-scheduler-SchedulerRole-1T81CJVGYER02_SchedulerPolicy" {
    name   = "SchedulerPolicy"
    role   = "ec2-scheduler-SchedulerRole-1T81CJVGYER02"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "rds:DeleteDBSnapshot",
        "rds:DescribeDBSnapshots",
        "rds:StopDBInstance"
      ],
      "Resource": "arn:aws:rds:*:364650154543:snapshot:*",
      "Effect": "Allow"
    },
    {
      "Action": [
        "rds:AddTagsToResource",
        "rds:RemoveTagsFromResource",
        "rds:DescribeDBSnapshots",
        "rds:StartDBInstance",
        "rds:StopDBInstance"
      ],
      "Resource": "arn:aws:rds:*:364650154543:db:*",
      "Effect": "Allow"
    },
    {
      "Action": [
        "ec2:StartInstances",
        "ec2:StopInstances",
        "ec2:CreateTags",
        "ec2:DeleteTags"
      ],
      "Resource": "arn:aws:ec2:*:364650154543:instance/*",
      "Effect": "Allow"
    },
    {
      "Action": "sns:Publish",
      "Resource": "arn:aws:sns:ap-northeast-2:364650154543:ec2-scheduler-InstanceSchedulerSnsTopic-R0OZHNTSL91W",
      "Effect": "Allow"
    },
    {
      "Action": "lambda:InvokeFunction",
      "Resource": "arn:aws:lambda:ap-northeast-2:364650154543:function:ec2-scheduler-InstanceSchedulerMain",
      "Effect": "Allow"
    },
    {
      "Action": [
        "kms:GenerateDataKey*",
        "kms:Decrypt"
      ],
      "Resource": "arn:aws:kms:ap-northeast-2:364650154543:key/89e56056-a739-406f-b9e5-ef584d8805e1",
      "Effect": "Allow"
    },
    {
      "Action": [
        "rds:AddTagsToResource",
        "rds:RemoveTagsFromResource",
        "rds:StartDBCluster",
        "rds:StopDBCluster"
      ],
      "Resource": "arn:aws:rds:*:364650154543:cluster:*",
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "ec2-scheduler-SchedulerRole-1T81CJVGYER02_SchedulerRoleDefaultPolicy66F774B8" {
    name   = "SchedulerRoleDefaultPolicy66F774B8"
    role   = "ec2-scheduler-SchedulerRole-1T81CJVGYER02"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "dynamodb:BatchGetItem",
        "dynamodb:GetRecords",
        "dynamodb:GetShardIterator",
        "dynamodb:Query",
        "dynamodb:GetItem",
        "dynamodb:Scan",
        "dynamodb:BatchWriteItem",
        "dynamodb:PutItem",
        "dynamodb:UpdateItem",
        "dynamodb:DeleteItem"
      ],
      "Resource": [
        "arn:aws:dynamodb:ap-northeast-2:364650154543:table/ec2-scheduler-StateTable-I2LJK6V7S7ZC"
      ],
      "Effect": "Allow"
    },
    {
      "Action": [
        "dynamodb:DeleteItem",
        "dynamodb:GetItem",
        "dynamodb:PutItem",
        "dynamodb:Query",
        "dynamodb:Scan",
        "dynamodb:BatchWriteItem"
      ],
      "Resource": [
        "arn:aws:dynamodb:ap-northeast-2:364650154543:table/ec2-scheduler-ConfigTable-BZZ707NYGY2D",
        "arn:aws:dynamodb:ap-northeast-2:364650154543:table/ec2-scheduler-MaintenanceWindowTable-XPSBCU1GW16F"
      ],
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "eksctl-pjtc-eks-dev-cluster-1-cluster-ServiceRole-QKB69KBPLE35_eksctl-pjtc-eks-dev-cluster-1-cluster-PolicyCloudWatchMetrics" {
    name   = "eksctl-pjtc-eks-dev-cluster-1-cluster-PolicyCloudWatchMetrics"
    role   = "eksctl-pjtc-eks-dev-cluster-1-cluster-ServiceRole-QKB69KBPLE35"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Resource": "*",
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "eksctl-pjtc-eks-dev-cluster-1-cluster-ServiceRole-QKB69KBPLE35_eksctl-pjtc-eks-dev-cluster-1-cluster-PolicyELBPermissions" {
    name   = "eksctl-pjtc-eks-dev-cluster-1-cluster-PolicyELBPermissions"
    role   = "eksctl-pjtc-eks-dev-cluster-1-cluster-ServiceRole-QKB69KBPLE35"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:DescribeAccountAttributes",
        "ec2:DescribeAddresses",
        "ec2:DescribeInternetGateways"
      ],
      "Resource": "*",
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "MythicalMysfits-CICD-BuildProjectRoleAA92C755-MGSJQR01AFXY_BuildProjectRoleDefaultPolicy3E9F248C" {
    name   = "BuildProjectRoleDefaultPolicy3E9F248C"
    role   = "MythicalMysfits-CICD-BuildProjectRoleAA92C755-MGSJQR01AFXY"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": [
        "arn:aws:logs:ap-northeast-2:364650154543:log-group:/aws/codebuild/MythicalMysfitsServiceCodeBuildProject:*",
        "arn:aws:logs:ap-northeast-2:364650154543:log-group:/aws/codebuild/MythicalMysfitsServiceCodeBuildProject"
      ],
      "Effect": "Allow"
    },
    {
      "Action": [
        "codebuild:BatchPutCodeCoverages",
        "codebuild:BatchPutTestCases",
        "codebuild:CreateReport",
        "codebuild:CreateReportGroup",
        "codebuild:UpdateReport"
      ],
      "Resource": "arn:aws:codebuild:ap-northeast-2:364650154543:report-group/MythicalMysfitsServiceCodeBuildProject-*",
      "Effect": "Allow"
    },
    {
      "Action": [
        "codecommit:BatchGetRepositories",
        "codecommit:GitPull",
        "codecommit:ListBranches",
        "codecommit:ListRepositories"
      ],
      "Resource": "arn:aws:codecommit:ap-northeast-2:364650154543:MythicalMysfits-BackendRepository",
      "Effect": "Allow"
    },
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:GetDownloadUrlForLayer",
        "ecr:InitiateLayerUpload",
        "ecr:PutImage",
        "ecr:UploadLayerPart"
      ],
      "Resource": "arn:aws:ecr:ap-northeast-2:364650154543:repository/mythicalmysfits/service",
      "Effect": "Allow"
    },
    {
      "Action": "ecr:GetAuthorizationToken",
      "Resource": "*",
      "Effect": "Allow"
    },
    {
      "Action": [
        "s3:Abort*",
        "s3:DeleteObject*",
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*",
        "s3:PutObject",
        "s3:PutObjectLegalHold",
        "s3:PutObjectRetention",
        "s3:PutObjectTagging",
        "s3:PutObjectVersionTagging"
      ],
      "Resource": [
        "arn:aws:s3:::mythicalmysfits-cicd-pipelineartifactsbucket22248-6oe4y8jfvkpm",
        "arn:aws:s3:::mythicalmysfits-cicd-pipelineartifactsbucket22248-6oe4y8jfvkpm/*"
      ],
      "Effect": "Allow"
    },
    {
      "Action": [
        "kms:Decrypt",
        "kms:DescribeKey",
        "kms:Encrypt",
        "kms:GenerateDataKey*",
        "kms:ReEncrypt*"
      ],
      "Resource": "arn:aws:kms:ap-northeast-2:364650154543:key/fa4ad845-7ea2-4e91-8566-971a76e27306",
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "MythicalMysfits-CICD-PipelineBuildCodePipelineActi-39HHSVXMD38M_PipelineBuildCodePipelineActionRoleDefaultPolicyC9CB73F8" {
    name   = "PipelineBuildCodePipelineActionRoleDefaultPolicyC9CB73F8"
    role   = "MythicalMysfits-CICD-PipelineBuildCodePipelineActi-39HHSVXMD38M"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codebuild:StopBuild"
      ],
      "Resource": "arn:aws:codebuild:ap-northeast-2:364650154543:project/MythicalMysfitsServiceCodeBuildProject",
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "MythicalMysfits-CICD-PipelineDeployDeployActionCod-15DYM25RG9PNK_PipelineDeployDeployActionCodePipelineActionRoleDefaultPolicyE194961B" {
    name   = "PipelineDeployDeployActionCodePipelineActionRoleDefaultPolicyE194961B"
    role   = "MythicalMysfits-CICD-PipelineDeployDeployActionCod-15DYM25RG9PNK"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ecs:DescribeServices",
        "ecs:DescribeTaskDefinition",
        "ecs:DescribeTasks",
        "ecs:ListTasks",
        "ecs:RegisterTaskDefinition",
        "ecs:UpdateService"
      ],
      "Resource": "*",
      "Effect": "Allow"
    },
    {
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "ec2.amazonaws.com",
            "ecs-tasks.amazonaws.com"
          ]
        }
      },
      "Action": "iam:PassRole",
      "Resource": "*",
      "Effect": "Allow"
    },
    {
      "Action": [
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*"
      ],
      "Resource": [
        "arn:aws:s3:::mythicalmysfits-cicd-pipelineartifactsbucket22248-6oe4y8jfvkpm",
        "arn:aws:s3:::mythicalmysfits-cicd-pipelineartifactsbucket22248-6oe4y8jfvkpm/*"
      ],
      "Effect": "Allow"
    },
    {
      "Action": [
        "kms:Decrypt",
        "kms:DescribeKey"
      ],
      "Resource": "arn:aws:kms:ap-northeast-2:364650154543:key/fa4ad845-7ea2-4e91-8566-971a76e27306",
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "MythicalMysfits-CICD-PipelineEventsRole46BEEA7C-8Q0ZJ7QC5WFH_PipelineEventsRoleDefaultPolicyFF4FCCE0" {
    name   = "PipelineEventsRoleDefaultPolicyFF4FCCE0"
    role   = "MythicalMysfits-CICD-PipelineEventsRole46BEEA7C-8Q0ZJ7QC5WFH"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "codepipeline:StartPipelineExecution",
      "Resource": "arn:aws:codepipeline:ap-northeast-2:364650154543:MythicalMysfitsPipeline",
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "MythicalMysfits-CICD-PipelineRoleD68726F7-ITHMJ180XX0U_PipelineRoleDefaultPolicyC7A05455" {
    name   = "PipelineRoleDefaultPolicyC7A05455"
    role   = "MythicalMysfits-CICD-PipelineRoleD68726F7-ITHMJ180XX0U"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:Abort*",
        "s3:DeleteObject*",
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*",
        "s3:PutObject",
        "s3:PutObjectLegalHold",
        "s3:PutObjectRetention",
        "s3:PutObjectTagging",
        "s3:PutObjectVersionTagging"
      ],
      "Resource": [
        "arn:aws:s3:::mythicalmysfits-cicd-pipelineartifactsbucket22248-6oe4y8jfvkpm",
        "arn:aws:s3:::mythicalmysfits-cicd-pipelineartifactsbucket22248-6oe4y8jfvkpm/*"
      ],
      "Effect": "Allow"
    },
    {
      "Action": [
        "kms:Decrypt",
        "kms:DescribeKey",
        "kms:Encrypt",
        "kms:GenerateDataKey*",
        "kms:ReEncrypt*"
      ],
      "Resource": "arn:aws:kms:ap-northeast-2:364650154543:key/fa4ad845-7ea2-4e91-8566-971a76e27306",
      "Effect": "Allow"
    },
    {
      "Action": "sts:AssumeRole",
      "Resource": [
        "arn:aws:iam::364650154543:role/MythicalMysfits-CICD-PipelineBuildCodePipelineActi-39HHSVXMD38M",
        "arn:aws:iam::364650154543:role/MythicalMysfits-CICD-PipelineDeployDeployActionCod-15DYM25RG9PNK",
        "arn:aws:iam::364650154543:role/MythicalMysfits-CICD-PipelineSourceCodeCommitSourc-UNZVPOOKWO5S"
      ],
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "MythicalMysfits-CICD-PipelineSourceCodeCommitSourc-UNZVPOOKWO5S_PipelineSourceCodeCommitSourceCodePipelineActionRoleDefaultPolicyC16FA278" {
    name   = "PipelineSourceCodeCommitSourceCodePipelineActionRoleDefaultPolicyC16FA278"
    role   = "MythicalMysfits-CICD-PipelineSourceCodeCommitSourc-UNZVPOOKWO5S"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:Abort*",
        "s3:DeleteObject*",
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*",
        "s3:PutObject",
        "s3:PutObjectLegalHold",
        "s3:PutObjectRetention",
        "s3:PutObjectTagging",
        "s3:PutObjectVersionTagging"
      ],
      "Resource": [
        "arn:aws:s3:::mythicalmysfits-cicd-pipelineartifactsbucket22248-6oe4y8jfvkpm",
        "arn:aws:s3:::mythicalmysfits-cicd-pipelineartifactsbucket22248-6oe4y8jfvkpm/*"
      ],
      "Effect": "Allow"
    },
    {
      "Action": [
        "kms:Decrypt",
        "kms:DescribeKey",
        "kms:Encrypt",
        "kms:GenerateDataKey*",
        "kms:ReEncrypt*"
      ],
      "Resource": "arn:aws:kms:ap-northeast-2:364650154543:key/fa4ad845-7ea2-4e91-8566-971a76e27306",
      "Effect": "Allow"
    },
    {
      "Action": [
        "codecommit:CancelUploadArchive",
        "codecommit:GetBranch",
        "codecommit:GetCommit",
        "codecommit:GetUploadArchiveStatus",
        "codecommit:UploadArchive"
      ],
      "Resource": "arn:aws:codecommit:ap-northeast-2:364650154543:MythicalMysfits-BackendRepository",
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "MythicalMysfits-ECS-ServiceTaskDefExecutionRole919-2I89IN9QI1RV_ServiceTaskDefExecutionRoleDefaultPolicy3073559D" {
    name   = "ServiceTaskDefExecutionRoleDefaultPolicy3073559D"
    role   = "MythicalMysfits-ECS-ServiceTaskDefExecutionRole919-2I89IN9QI1RV"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchGetImage",
        "ecr:GetDownloadUrlForLayer"
      ],
      "Resource": "arn:aws:ecr:ap-northeast-2:364650154543:repository/mythicalmysfits/service",
      "Effect": "Allow"
    },
    {
      "Action": [
        "ec2:AttachNetworkInterface",
        "ec2:CreateNetworkInterface",
        "ec2:CreateNetworkInterfacePermission",
        "ec2:DeleteNetworkInterface",
        "ec2:DeleteNetworkInterfacePermission",
        "ec2:Describe*",
        "ec2:DetachNetworkInterface",
        "ecr:GetAuthorizationToken",
        "elasticloadbalancing:DeregisterInstancesFromLoadBalancer",
        "elasticloadbalancing:DeregisterTargets",
        "elasticloadbalancing:Describe*",
        "elasticloadbalancing:RegisterInstancesWithLoadBalancer",
        "elasticloadbalancing:RegisterTargets",
        "iam:PassRole",
        "logs:CreateLogGroup",
        "logs:DescribeLogStreams"
      ],
      "Resource": "*",
      "Effect": "Allow"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": "arn:aws:logs:ap-northeast-2:364650154543:log-group:MythicalMysfits-ECS-ServiceTaskDefMythicalMysfitsServiceLogGroupD4158160-UypErjRlWOd5:*",
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "MythicalMysfits-ECS-ServiceTaskDefTaskRole0CFE2F57-1Q77V4VKJW65B_ServiceTaskDefTaskRoleDefaultPolicy9CCB4F8E" {
    name   = "ServiceTaskDefTaskRoleDefaultPolicy9CCB4F8E"
    role   = "MythicalMysfits-ECS-ServiceTaskDefTaskRole0CFE2F57-1Q77V4VKJW65B"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchGetImage",
        "ecr:GetAuthorizationToken",
        "ecr:GetDownloadUrlForLayer",
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": "*",
      "Effect": "Allow"
    },
    {
      "Action": [
        "dynamodb:DescribeTable",
        "dynamodb:GetItem",
        "dynamodb:Query",
        "dynamodb:Scan",
        "dynamodb:UpdateItem"
      ],
      "Resource": "arn:aws:dynamodb:*:*:table/MysfitsTable*",
      "Effect": "Allow"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "MythicalMysfits-Website-CustomCDKBucketDeployment8-ZKIAWX4UKB18_CustomCDKBucketDeployment8693BB64968944B69AAFB0CC9EB8756CServiceRoleDefaultPolicy88902FDF" {
    name   = "CustomCDKBucketDeployment8693BB64968944B69AAFB0CC9EB8756CServiceRoleDefaultPolicy88902FDF"
    role   = "MythicalMysfits-Website-CustomCDKBucketDeployment8-ZKIAWX4UKB18"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*"
      ],
      "Resource": [
        "arn:aws:s3:::cdk-hnb659fds-assets-364650154543-ap-northeast-2/*",
        "arn:aws:s3:::cdk-hnb659fds-assets-364650154543-ap-northeast-2"
      ],
      "Effect": "Allow"
    },
    {
      "Action": [
        "s3:Abort*",
        "s3:DeleteObject*",
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*",
        "s3:PutObject",
        "s3:PutObjectLegalHold",
        "s3:PutObjectRetention",
        "s3:PutObjectTagging",
        "s3:PutObjectVersionTagging"
      ],
      "Resource": [
        "arn:aws:s3:::mythicalmysfits-website-bucket83908e77-14b7t1e3181cw",
        "arn:aws:s3:::mythicalmysfits-website-bucket83908e77-14b7t1e3181cw/*"
      ],
      "Effect": "Allow"
    },
    {
      "Action": [
        "cloudfront:CreateInvalidation",
        "cloudfront:GetInvalidation"
      ],
      "Resource": "*",
      "Effect": "Allow"
    }
  ]
}
POLICY
}

