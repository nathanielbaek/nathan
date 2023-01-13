resource "aws_route53_record" "ofma-co-kr-NS" {
    zone_id = "Z08148092LA2MGI2OKUXG"
    name    = "ofma.co.kr"
    type    = "NS"
    records = ["ns-1137.awsdns-14.org.", "ns-651.awsdns-17.net.", "ns-111.awsdns-13.com.", "ns-1854.awsdns-39.co.uk."]
    ttl     = "172800"

}

resource "aws_route53_record" "ofma-co-kr-SOA" {
    zone_id = "Z08148092LA2MGI2OKUXG"
    name    = "ofma.co.kr"
    type    = "SOA"
    records = ["ns-1137.awsdns-14.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "orangefrommas-com-NS" {
    zone_id = "Z02214123F1BXCOU6RMXS"
    name    = "orangefrommas.com"
    type    = "NS"
    records = ["ns-1975.awsdns-54.co.uk.", "ns-230.awsdns-28.com.", "ns-1046.awsdns-02.org.", "ns-744.awsdns-29.net."]
    ttl     = "172800"

}

resource "aws_route53_record" "orangefrommas-com-SOA" {
    zone_id = "Z02214123F1BXCOU6RMXS"
    name    = "orangefrommas.com"
    type    = "SOA"
    records = ["ns-1975.awsdns-54.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "ofma-kr-NS" {
    zone_id = "Z07102593GCC56W3CD8PC"
    name    = "ofma.kr"
    type    = "NS"
    records = ["ns-148.awsdns-18.com.", "ns-1093.awsdns-08.org.", "ns-1539.awsdns-00.co.uk.", "ns-853.awsdns-42.net."]
    ttl     = "172800"

}

resource "aws_route53_record" "ofma-kr-SOA" {
    zone_id = "Z07102593GCC56W3CD8PC"
    name    = "ofma.kr"
    type    = "SOA"
    records = ["ns-148.awsdns-18.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "ofma-world-NS" {
    zone_id = "Z02000621CBCETWZQRWGK"
    name    = "ofma.world"
    type    = "NS"
    records = ["ns-1536.awsdns-00.co.uk.", "ns-0.awsdns-00.com.", "ns-1024.awsdns-00.org.", "ns-512.awsdns-00.net."]
    ttl     = "172800"

}

resource "aws_route53_record" "ofma-world-SOA" {
    zone_id = "Z02000621CBCETWZQRWGK"
    name    = "ofma.world"
    type    = "SOA"
    records = ["ns-1536.awsdns-00.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "ofma-dev-NS" {
    zone_id = "Z01712068PERN0DLMSE1"
    name    = "ofma.dev"
    type    = "NS"
    records = ["ns-1536.awsdns-00.co.uk.", "ns-0.awsdns-00.com.", "ns-1024.awsdns-00.org.", "ns-512.awsdns-00.net."]
    ttl     = "172800"

}

resource "aws_route53_record" "ofma-dev-SOA" {
    zone_id = "Z01712068PERN0DLMSE1"
    name    = "ofma.dev"
    type    = "SOA"
    records = ["ns-1536.awsdns-00.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

