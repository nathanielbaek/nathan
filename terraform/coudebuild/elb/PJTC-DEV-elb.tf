resource "aws_elb" "a13445ef338a34ac19576653fdfb2fc9" {
    name                        = "a13445ef338a34ac19576653fdfb2fc9"
    subnets                     = ["subnet-0171166ffd477395a", "subnet-036503f3637909f36", "subnet-09e571b5451d8c138", "subnet-0ebcc614006f875bf"]
    security_groups             = ["sg-05f8304a08b36fe3d"]
    instances                   = ["i-0a94c626af47ac167", "i-061cf35dd9533c80e"]
    cross_zone_load_balancing   = false
    idle_timeout                = 60
    connection_draining         = false
    connection_draining_timeout = 300
    internal                    = false

    listener {
        instance_port      = 30235
        instance_protocol  = "tcp"
        lb_port            = 80
        lb_protocol        = "tcp"
        ssl_certificate_id = ""
    }

    health_check {
        healthy_threshold   = 2
        unhealthy_threshold = 6
        interval            = 10
        target              = "TCP:30235"
        timeout             = 5
    }

    tags {
        "kubernetes.io/service-name" = "pjtc-dev/pjtc-dev-api-deployment"
        "kubernetes.io/cluster/pjtc-dev-eks-cluster1" = "owned"
    }
}

resource "aws_elb" "a13436ac1196244a396ecae580a1f683" {
    name                        = "a13436ac1196244a396ecae580a1f683"
    subnets                     = ["subnet-0171166ffd477395a", "subnet-036503f3637909f36", "subnet-09e571b5451d8c138", "subnet-0ebcc614006f875bf"]
    security_groups             = ["sg-0c359036946874454"]
    instances                   = ["i-0a94c626af47ac167", "i-061cf35dd9533c80e"]
    cross_zone_load_balancing   = false
    idle_timeout                = 60
    connection_draining         = false
    connection_draining_timeout = 300
    internal                    = false

    listener {
        instance_port      = 30762
        instance_protocol  = "tcp"
        lb_port            = 443
        lb_protocol        = "tcp"
        ssl_certificate_id = ""
    }

    listener {
        instance_port      = 30782
        instance_protocol  = "tcp"
        lb_port            = 80
        lb_protocol        = "tcp"
        ssl_certificate_id = ""
    }

    health_check {
        healthy_threshold   = 2
        unhealthy_threshold = 6
        interval            = 10
        target              = "TCP:30782"
        timeout             = 5
    }

    tags {
        "kubernetes.io/service-name" = "argocd/argocd-server"
        "kubernetes.io/cluster/pjtc-dev-eks-cluster1" = "owned"
    }
}

resource "aws_elb" "ac1800b71f5744302be6d2e93ff828ea" {
    name                        = "ac1800b71f5744302be6d2e93ff828ea"
    subnets                     = ["subnet-0171166ffd477395a", "subnet-036503f3637909f36", "subnet-09e571b5451d8c138", "subnet-0ebcc614006f875bf"]
    security_groups             = ["sg-0978e85959733c1b4"]
    instances                   = ["i-0a94c626af47ac167", "i-061cf35dd9533c80e"]
    cross_zone_load_balancing   = false
    idle_timeout                = 60
    connection_draining         = false
    connection_draining_timeout = 300
    internal                    = false

    listener {
        instance_port      = 31247
        instance_protocol  = "tcp"
        lb_port            = 80
        lb_protocol        = "tcp"
        ssl_certificate_id = ""
    }

    health_check {
        healthy_threshold   = 2
        unhealthy_threshold = 6
        interval            = 10
        target              = "TCP:31247"
        timeout             = 5
    }

    tags {
        "kubernetes.io/service-name" = "pjtc-dev/pjtc-dev-api-gateway"
        "kubernetes.io/cluster/pjtc-dev-eks-cluster1" = "owned"
    }
}
