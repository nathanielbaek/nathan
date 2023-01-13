resource "aws_security_group" "vpc-0d4646df276b9d89e-eksctl-dev-eks-cluster-1-cluster-ClusterSharedNodeSecurityGroup-1XZZCYL5QSPIY" {
    name        = "eksctl-dev-eks-cluster-1-cluster-ClusterSharedNodeSecurityGroup-1XZZCYL5QSPIY"
    description = "Communication between all nodes in the cluster"
    vpc_id      = "vpc-0d4646df276b9d89e"

    ingress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        security_groups = ["sg-0a839b963a30912a1"]
        self            = true
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "dev-eks-cluster-1"
        "alpha.eksctl.io/cluster-name" = "dev-eks-cluster-1"
        "aws:cloudformation:logical-id" = "ClusterSharedNodeSecurityGroup"
        "alpha.eksctl.io/cluster-oidc-enabled" = "false"
        "alpha.eksctl.io/eksctl-version" = "0.105.0"
        "aws:cloudformation:stack-id" = "arn:aws:cloudformation:ap-northeast-2:364650154543:stack/eksctl-dev-eks-cluster-1-cluster/07bba090-0266-11ed-b38b-0247f4856094"
        "aws:cloudformation:stack-name" = "eksctl-dev-eks-cluster-1-cluster"
        "Name" = "eksctl-dev-eks-cluster-1-cluster/ClusterSharedNodeSecurityGroup"
    }
}

resource "aws_security_group" "vpc-0d4646df276b9d89e-k8s-elb-a681b7184f1dd4e44800cd9645191d0e" {
    name        = "k8s-elb-a681b7184f1dd4e44800cd9645191d0e"
    description = "Security group for Kubernetes ELB a681b7184f1dd4e44800cd9645191d0e (default/dev-api-deployment)"
    vpc_id      = "vpc-0d4646df276b9d89e"

    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 3
        to_port         = 4
        protocol        = "icmp"
        cidr_blocks     = ["0.0.0.0/0"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "kubernetes.io/cluster/dev-eks-cluster1" = "owned"
    }
}

resource "aws_security_group" "vpc-0d4646df276b9d89e-eksctl-dev-eks-cluster1-cluster-ClusterSharedNodeSecurityGroup-1VL2CDJI31M9C" {
    name        = "eksctl-dev-eks-cluster1-cluster-ClusterSharedNodeSecurityGroup-1VL2CDJI31M9C"
    description = "Communication between all nodes in the cluster"
    vpc_id      = "vpc-0d4646df276b9d89e"

    ingress {
        from_port       = 0
        to_port         = 65535
        protocol        = "tcp"
        cidr_blocks     = ["112.216.104.34/32"]
    }

    ingress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        security_groups = ["sg-0c67dd8fbf99fa34e"]
        self            = true
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "aws:cloudformation:stack-name" = "eksctl-dev-eks-cluster1-cluster"
        "alpha.eksctl.io/cluster-oidc-enabled" = "false"
        "aws:cloudformation:logical-id" = "ClusterSharedNodeSecurityGroup"
        "alpha.eksctl.io/cluster-name" = "dev-eks-cluster1"
        "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "dev-eks-cluster1"
        "Name" = "eksctl-dev-eks-cluster1-cluster/ClusterSharedNodeSecurityGroup"
        "alpha.eksctl.io/eksctl-version" = "0.105.0"
        "aws:cloudformation:stack-id" = "arn:aws:cloudformation:ap-northeast-2:364650154543:stack/eksctl-dev-eks-cluster1-cluster/b813fa90-03e3-11ed-8e97-06d87ae61f3e"
    }
}

resource "aws_security_group" "vpc-0d4646df276b9d89e-k8s-elb-a6a766355c3704646b8ee2841d2cb41b" {
    name        = "k8s-elb-a6a766355c3704646b8ee2841d2cb41b"
    description = "Security group for Kubernetes ELB a6a766355c3704646b8ee2841d2cb41b (dev/dev-api-deployment)"
    vpc_id      = "vpc-0d4646df276b9d89e"

    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 3
        to_port         = 4
        protocol        = "icmp"
        cidr_blocks     = ["0.0.0.0/0"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "kubernetes.io/cluster/dev-eks-cluster1" = "owned"
    }
}

resource "aws_security_group" "vpc-0d4646df276b9d89e-k8s-elb-a13445ef338a34ac19576653fdfb2fc9" {
    name        = "k8s-elb-a13445ef338a34ac19576653fdfb2fc9"
    description = "Security group for Kubernetes ELB a13445ef338a34ac19576653fdfb2fc9 (dev/dev-api-deployment)"
    vpc_id      = "vpc-0d4646df276b9d89e"

    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 3
        to_port         = 4
        protocol        = "icmp"
        cidr_blocks     = ["0.0.0.0/0"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "kubernetes.io/cluster/dev-eks-cluster1" = "owned"
    }
}

resource "aws_security_group" "vpc-0d4646df276b9d89e-SECURITY1" {
    name        = "SECURITY1"
    description = "DEV-EC2"
    vpc_id      = "vpc-0d4646df276b9d89e"

    ingress {
        from_port       = 0
        to_port         = 65535
        protocol        = "tcp"
        cidr_blocks     = ["112.216.104.34/32"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "Name" = "dev-ec2-1"
    }
}

resource "aws_security_group" "vpc-0d4646df276b9d89e-launch-wizard-1" {
    name        = "launch-wizard-1"
    description = "launch-wizard created 2022-07-12T07:33:05.201Z"
    vpc_id      = "vpc-0d4646df276b9d89e"

    ingress {
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "Name" = "dev-bastion-1"
    }
}

resource "aws_security_group" "vpc-0d4646df276b9d89e-eks-cluster-sg-dev-eks-cluster1-967765805" {
    name        = "eks-cluster-sg-dev-eks-cluster1-967765805"
    description = "EKS created security group applied to ENI that is attached to EKS Control Plane master nodes, as well as any managed workloads."
    vpc_id      = "vpc-0d4646df276b9d89e"

    ingress {
        from_port       = 0
        to_port         = 65535
        protocol        = "tcp"
        cidr_blocks     = ["112.216.104.34/32"]
    }

    ingress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        security_groups = ["sg-003db937c5c93a0b7", "sg-01b43f629cd9b4f52", "sg-05f8304a08b36fe3d", "sg-07c58ed3e40b6b582", "sg-0978e85959733c1b4", "sg-0ae87fa0904eb7f9d", "sg-0c359036946874454"]
        self            = true
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "kubernetes.io/cluster/dev-eks-cluster1" = "owned"
        "Name" = "eks-cluster-sg-dev-eks-cluster1-967765805"
        "aws:eks:cluster-name" = "dev-eks-cluster1"
    }
}

resource "aws_security_group" "vpc-0d4646df276b9d89e-eksctl-dev-eks-cluster1-cluster-ControlPlaneSecurityGroup-1TJ4PA621J45R" {
    name        = "eksctl-dev-eks-cluster1-cluster-ControlPlaneSecurityGroup-1TJ4PA621J45R"
    description = "Communication between the control plane and worker nodegroups"
    vpc_id      = "vpc-0d4646df276b9d89e"


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "alpha.eksctl.io/cluster-oidc-enabled" = "false"
        "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "dev-eks-cluster1"
        "Name" = "eksctl-dev-eks-cluster1-cluster/ControlPlaneSecurityGroup"
        "aws:cloudformation:stack-name" = "eksctl-dev-eks-cluster1-cluster"
        "alpha.eksctl.io/eksctl-version" = "0.105.0"
        "aws:cloudformation:logical-id" = "ControlPlaneSecurityGroup"
        "aws:cloudformation:stack-id" = "arn:aws:cloudformation:ap-northeast-2:364650154543:stack/eksctl-dev-eks-cluster1-cluster/b813fa90-03e3-11ed-8e97-06d87ae61f3e"
        "alpha.eksctl.io/cluster-name" = "dev-eks-cluster1"
    }
}

resource "aws_security_group" "vpc-0d4646df276b9d89e-k8s-elb-aa3e751badeaf41af9fa785477e1452c" {
    name        = "k8s-elb-aa3e751badeaf41af9fa785477e1452c"
    description = "Security group for Kubernetes ELB aa3e751badeaf41af9fa785477e1452c (dev/dev-api-deployment)"
    vpc_id      = "vpc-0d4646df276b9d89e"

    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 3
        to_port         = 4
        protocol        = "icmp"
        cidr_blocks     = ["0.0.0.0/0"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "kubernetes.io/cluster/dev-eks-cluster1" = "owned"
    }
}

resource "aws_security_group" "vpc-0d4646df276b9d89e-eksctl-dev-eks-cluster-1-cluster-ControlPlaneSecurityGroup-OOKSMHGK224Q" {
    name        = "eksctl-dev-eks-cluster-1-cluster-ControlPlaneSecurityGroup-OOKSMHGK224Q"
    description = "Communication between the control plane and worker nodegroups"
    vpc_id      = "vpc-0d4646df276b9d89e"


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "alpha.eksctl.io/cluster-oidc-enabled" = "false"
        "aws:cloudformation:logical-id" = "ControlPlaneSecurityGroup"
        "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "dev-eks-cluster-1"
        "alpha.eksctl.io/eksctl-version" = "0.105.0"
        "aws:cloudformation:stack-name" = "eksctl-dev-eks-cluster-1-cluster"
        "aws:cloudformation:stack-id" = "arn:aws:cloudformation:ap-northeast-2:364650154543:stack/eksctl-dev-eks-cluster-1-cluster/07bba090-0266-11ed-b38b-0247f4856094"
        "Name" = "eksctl-dev-eks-cluster-1-cluster/ControlPlaneSecurityGroup"
        "alpha.eksctl.io/cluster-name" = "dev-eks-cluster-1"
    }
}

resource "aws_security_group" "vpc-0d4646df276b9d89e-OpenVPN-Access-Server--5-Connected-Devices--2-8-5-AutogenByAWSMP--1" {
    name        = "OpenVPN Access Server (5 Connected Devices)-2.8.5-AutogenByAWSMP--1"
    description = "This security group was generated by AWS Marketplace and is based on recommended settings for OpenVPN Access Server (5 Connected Devices) version 2.8.5 provided by OpenVPN Inc."
    vpc_id      = "vpc-0d4646df276b9d89e"

    ingress {
        from_port       = 1194
        to_port         = 1194
        protocol        = "udp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 945
        to_port         = 945
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 943
        to_port         = 943
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 443
        to_port         = 443
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "Name" = "dev-openvpn"
    }
}

resource "aws_security_group" "vpc-0d4646df276b9d89e-eks-cluster-sg-dev-eks-cluster-1-64031042" {
    name        = "eks-cluster-sg-dev-eks-cluster-1-64031042"
    description = "EKS created security group applied to ENI that is attached to EKS Control Plane master nodes, as well as any managed workloads."
    vpc_id      = "vpc-0d4646df276b9d89e"

    ingress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        security_groups = ["sg-0bef98e9a2527df7e"]
        self            = false
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "aws:eks:cluster-name" = "dev-eks-cluster-1"
        "Name" = "eks-cluster-sg-dev-eks-cluster-1-64031042"
        "kubernetes.io/cluster/dev-eks-cluster-1" = "owned"
    }
}

resource "aws_security_group" "vpc-0d4646df276b9d89e-k8s-elb-ac1800b71f5744302be6d2e93ff828ea" {
    name        = "k8s-elb-ac1800b71f5744302be6d2e93ff828ea"
    description = "Security group for Kubernetes ELB ac1800b71f5744302be6d2e93ff828ea (dev/dev-api-gateway)"
    vpc_id      = "vpc-0d4646df276b9d89e"

    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 3
        to_port         = 4
        protocol        = "icmp"
        cidr_blocks     = ["0.0.0.0/0"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "kubernetes.io/cluster/dev-eks-cluster1" = "owned"
    }
}

resource "aws_security_group" "vpc-0d4646df276b9d89e-k8s-elb-a13436ac1196244a396ecae580a1f683" {
    name        = "k8s-elb-a13436ac1196244a396ecae580a1f683"
    description = "Security group for Kubernetes ELB a13436ac1196244a396ecae580a1f683 (argocd/argocd-server)"
    vpc_id      = "vpc-0d4646df276b9d89e"

    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 3
        to_port         = 4
        protocol        = "icmp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 443
        to_port         = 443
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "kubernetes.io/cluster/dev-eks-cluster1" = "owned"
    }
}

resource "aws_security_group" "vpc-0d4646df276b9d89e-default" {
    name        = "default"
    description = "default VPC security group"
    vpc_id      = "vpc-0d4646df276b9d89e"

    ingress {
        from_port       = 0
        to_port         = 65535
        protocol        = "tcp"
        cidr_blocks     = ["112.216.104.34/32"]
        security_groups = ["sg-04269c1afdab0cd7b"]
        self            = false
    }

    ingress {
        from_port       = 6379
        to_port         = 6379
        protocol        = "tcp"
        security_groups = ["sg-053b2533334805dbb"]
        self            = false
    }

    ingress {
        from_port       = 27017
        to_port         = 27017
        protocol        = "tcp"
        security_groups = ["sg-053b2533334805dbb"]
        self            = false
    }

    ingress {
        from_port       = 3306
        to_port         = 3306
        protocol        = "tcp"
        cidr_blocks     = ["172.31.0.0/16"]
        security_groups = ["sg-053b2533334805dbb"]
        self            = false
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "Name" = "any policy"
    }
}
