resource "aws_s3_bucket" "cdk-hnb659fds-assets-364650154543-ap-northeast-2" {
    bucket = "cdk-hnb659fds-assets-364650154543-ap-northeast-2"
    acl    = "private"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "AccessControl",
  "Statement": [
    {
      "Sid": "AllowSSLRequestsOnly",
      "Effect": "Deny",
      "Principal": "*",
      "Action": "s3:*",
      "Resource": [
        "arn:aws:s3:::cdk-hnb659fds-assets-364650154543-ap-northeast-2",
        "arn:aws:s3:::cdk-hnb659fds-assets-364650154543-ap-northeast-2/*"
      ],
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "false"
        }
      }
    }
  ]
}
POLICY
}

resource "aws_s3_bucket" "cf-templates-y453v0rve5xw-ap-northeast-2" {
    bucket = "cf-templates-y453v0rve5xw-ap-northeast-2"
    acl    = "private"
}

resource "aws_s3_bucket" "mythicalmysfits-cicd-pipelineartifactsbucket22248-6oe4y8jfvkpm" {
    bucket = "mythicalmysfits-cicd-pipelineartifactsbucket22248-6oe4y8jfvkpm"
    acl    = "private"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Deny",
      "Principal": {
        "AWS": "*"
      },
      "Action": "s3:*",
      "Resource": [
        "arn:aws:s3:::mythicalmysfits-cicd-pipelineartifactsbucket22248-6oe4y8jfvkpm",
        "arn:aws:s3:::mythicalmysfits-cicd-pipelineartifactsbucket22248-6oe4y8jfvkpm/*"
      ],
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "false"
        }
      }
    }
  ]
}
POLICY
}

resource "aws_s3_bucket" "mythicalmysfits-website-bucket83908e77-14b7t1e3181cw" {
    bucket = "mythicalmysfits-website-bucket83908e77-14b7t1e3181cw"
    acl    = "private"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity E15RQNRWQVZQ6Z"
      },
      "Action": [
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*"
      ],
      "Resource": [
        "arn:aws:s3:::mythicalmysfits-website-bucket83908e77-14b7t1e3181cw",
        "arn:aws:s3:::mythicalmysfits-website-bucket83908e77-14b7t1e3181cw/*"
      ]
    },
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity E15RQNRWQVZQ6Z"
      },
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::mythicalmysfits-website-bucket83908e77-14b7t1e3181cw/*"
    }
  ]
}
POLICY
}

resource "aws_s3_bucket" "ofm-upload" {
    bucket = "ofm-upload"
    acl    = "private"
}

resource "aws_s3_bucket" "pjtc-dev-cdn" {
    bucket = "pjtc-dev-cdn"
    acl    = "private"
    policy = <<POLICY
{
  "Version": "2008-10-17",
  "Id": "PolicyForCloudFrontPrivateContent",
  "Statement": [
    {
      "Sid": "1",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity E34C5URKIEFM2L"
      },
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::pjtc-dev-cdn/*"
    }
  ]
}
POLICY
}

