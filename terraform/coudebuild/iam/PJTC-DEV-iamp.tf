resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-93410f77-510a-417b-a942-225f9afe5d66" {
    name        = "AWSLambdaBasicExecutionRole-93410f77-510a-417b-a942-225f9afe5d66"
    path        = "/service-role/"
    description = ""
    policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "logs:CreateLogGroup",
      "Resource": "arn:aws:logs:ap-northeast-2:364650154543:*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": [
        "arn:aws:logs:ap-northeast-2:364650154543:log-group:/aws/lambda/my-s3-function:*"
      ]
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-ed0e7fd7-f4ad-49cf-b15a-8b1c1219e542" {
    name        = "AWSLambdaBasicExecutionRole-ed0e7fd7-f4ad-49cf-b15a-8b1c1219e542"
    path        = "/service-role/"
    description = ""
    policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "logs:CreateLogGroup",
      "Resource": "arn:aws:logs:ap-northeast-2:364650154543:*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": [
        "arn:aws:logs:ap-northeast-2:364650154543:log-group:/aws/lambda/catch-put-event-function:*"
      ]
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-6d33c418-73f9-49e2-bb5b-63d703786272" {
    name        = "AWSLambdaBasicExecutionRole-6d33c418-73f9-49e2-bb5b-63d703786272"
    path        = "/service-role/"
    description = ""
    policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "logs:CreateLogGroup",
      "Resource": "arn:aws:logs:ap-northeast-2:364650154543:*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": [
        "arn:aws:logs:ap-northeast-2:364650154543:log-group:/aws/lambda/MyApiServer:*"
      ]
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-5301bb58-47e3-4dd4-93cd-f287c6e566c3" {
    name        = "AWSLambdaBasicExecutionRole-5301bb58-47e3-4dd4-93cd-f287c6e566c3"
    path        = "/service-role/"
    description = ""
    policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "logs:CreateLogGroup",
      "Resource": "arn:aws:logs:ap-northeast-2:364650154543:*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": [
        "arn:aws:logs:ap-northeast-2:364650154543:log-group:/aws/lambda/check-s3-upload-function:*"
      ]
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "OpsItem-CWE-RolePolicy" {
    name        = "OpsItem-CWE-RolePolicy"
    path        = "/service-role/"
    description = ""
    policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ssm:CreateOpsItem",
      "Resource": "*"
    },
    {
      "Effect": "Allow",
      "Action": "ssm:AddTagsToResource",
      "Resource": "arn:aws:ssm:*:*:opsitem/*"
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "rds-proxy-policy-1658308373786" {
    name        = "rds-proxy-policy-1658308373786"
    path        = "/service-role/"
    description = "Allows RDS Proxy access to database connection credentials"
    policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "GetSecretValue",
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:ap-northeast-2:364650154543:secret:test-9uAppw"
      ]
    },
    {
      "Sid": "DecryptSecretValue",
      "Action": [
        "kms:Decrypt"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:ap-northeast-2:364650154543:key/b4f63e2b-37fa-4779-854f-27d446853af1"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "secretsmanager.ap-northeast-2.amazonaws.com"
        }
      }
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-ff871910-1cbc-4ba3-b01f-4051cf6c5c97" {
    name        = "AWSLambdaBasicExecutionRole-ff871910-1cbc-4ba3-b01f-4051cf6c5c97"
    path        = "/service-role/"
    description = ""
    policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "VisualEditor0",
      "Effect": "Allow",
      "Action": [
        "sqs:DeleteMessage",
        "sqs:ReceiveMessage",
        "sqs:GetQueueAttributes",
        "logs:CreateLogGroup"
      ],
      "Resource": [
        "arn:aws:sqs:ap-northeast-2:364650154543:media-uploaded",
        "arn:aws:logs:ap-northeast-2:364650154543:*"
      ]
    },
    {
      "Sid": "VisualEditor1",
      "Effect": "Allow",
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": "arn:aws:logs:ap-northeast-2:364650154543:log-group:/aws/lambda/anguk-test-lambda:*"
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaS3ExecutionRole-431a4885-5eae-4736-9a9c-17d3d82eda14" {
    name        = "AWSLambdaS3ExecutionRole-431a4885-5eae-4736-9a9c-17d3d82eda14"
    path        = "/service-role/"
    description = ""
    policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject"
      ],
      "Resource": "arn:aws:s3:::*"
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaS3ExecutionRole-8fdf988d-74a4-4015-95c3-20aedd6fec90" {
    name        = "AWSLambdaS3ExecutionRole-8fdf988d-74a4-4015-95c3-20aedd6fec90"
    path        = "/service-role/"
    description = ""
    policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject"
      ],
      "Resource": "arn:aws:s3:::*"
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "rds-proxy-policy-1660269338246" {
    name        = "rds-proxy-policy-1660269338246"
    path        = "/service-role/"
    description = "Allows RDS Proxy access to database connection credentials"
    policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "GetSecretValue",
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:ap-northeast-2:364650154543:secret:prod/AppBeta/MySQL-KshssB"
      ]
    },
    {
      "Sid": "DecryptSecretValue",
      "Action": [
        "kms:Decrypt"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:ap-northeast-2:364650154543:key/b4f63e2b-37fa-4779-854f-27d446853af1"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "secretsmanager.ap-northeast-2.amazonaws.com"
        }
      }
    }
  ]
}
POLICY
}

