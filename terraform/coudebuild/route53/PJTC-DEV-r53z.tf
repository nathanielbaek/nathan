resource "aws_route53_zone" "ofma-co-kr-public" {
    name       = "ofma.co.kr"
    comment    = "orange from mas"

    tags {
    }
}

resource "aws_route53_zone" "orangefrommas-com-public" {
    name       = "orangefrommas.com"
    comment    = "orange from mars"

    tags {
    }
}

resource "aws_route53_zone" "ofma-kr-public" {
    name       = "ofma.kr"
    comment    = "orange from mars"

    tags {
    }
}

resource "aws_route53_zone" "ofma-world-private" {
    name       = "ofma.world"
    comment    = "orange from mars"
    vpc_id     = "vpc-0d4646df276b9d89e"
    vpc_region = "ap-northeast-2"

    tags {
    }
}

resource "aws_route53_zone" "ofma-dev-private" {
    name       = "ofma.dev"
    comment    = "orange from mars"
    vpc_id     = "vpc-0d4646df276b9d89e"
    vpc_region = "ap-northeast-2"

    tags {
    }
}

