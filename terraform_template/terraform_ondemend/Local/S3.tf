#간단하게 버전 기록과 수명 주기를 설정한 버킷입니다.
#image/test.jpg 등과 같이 이름 접두사가 겹치는 파일 중 최신 버전이 아닌 파일은 180일 이후에 삭제되도록 설정하였습니다.


resource "aws_s3_bucket" "LF-PJTC-S3" {
  bucket = "LF-PJTC-S3-DEV-BUCKET"
  acl    = "private"

  versioning {
      enabled = true
  }

  lifecycle_rule {
    prefix = "image/"
    enabled = true

    noncurrent_version_expiration {
      days = 180
    }
  }

  tags = {
    "Name" = "LF-PJTC-DEV-BUCKET"
  }
}
