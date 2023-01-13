resource "aws_sqs_queue" "docent-follow-queue" {
    name                       = "docent-follow-queue"
    visibility_timeout_seconds = 30
    message_retention_seconds  = 345600
    max_message_size           = 262144
    delay_seconds              = 0
    receive_wait_time_seconds  = 0
    policy                     = <<POLICY
{
  "Version": "2008-10-17",
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Sid": "__owner_statement",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::364650154543:root"
      },
      "Action": "SQS:*",
      "Resource": "arn:aws:sqs:ap-northeast-2:364650154543:docent-follow-queue"
    }
  ]
}
POLICY
}

resource "aws_sqs_queue" "docent-like-queue" {
    name                       = "docent-like-queue"
    visibility_timeout_seconds = 30
    message_retention_seconds  = 345600
    max_message_size           = 262144
    delay_seconds              = 0
    receive_wait_time_seconds  = 0
    policy                     = <<POLICY
{
  "Version": "2008-10-17",
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Sid": "__owner_statement",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::364650154543:root"
      },
      "Action": "SQS:*",
      "Resource": "arn:aws:sqs:ap-northeast-2:364650154543:docent-like-queue"
    }
  ]
}
POLICY
}

resource "aws_sqs_queue" "media-uploaded" {
    name                       = "media-uploaded"
    visibility_timeout_seconds = 30
    message_retention_seconds  = 345600
    max_message_size           = 262144
    delay_seconds              = 0
    receive_wait_time_seconds  = 0
    policy                     = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Sid": "__owner_statement",
      "Effect": "Allow",
      "Principal": {
        "Service": "s3.amazonaws.com"
      },
      "Action": "SQS:SendMessage",
      "Resource": "arn:aws:sqs:ap-northeast-2:364650154543:media-uploaded",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "364650154543"
        },
        "ArnLike": {
          "aws:SourceArn": "arn:aws:s3:*:*:ofm-upload"
        }
      }
    },
    {
      "Sid": "Stmt1662014184565",
      "Effect": "Allow",
      "Action": [
        "lambda:CreateEventSourceMapping",
        "lambda:ListEventSourceMappings",
        "lambda:ListFunctions"
      ],
      "Resource": "arn:aws:lambda:ap-northeast-2:364650154543:function:anguk-test-lambda"
    }
  ]
}
POLICY
}

