resource "aws_instance" "dev-workernode-1" {
    ami                         = "ami-06270d127b7771d04"
    availability_zone           = "ap-northeast-2a"
    ebs_optimized               = false
    instance_type               = "t2.medium"
    monitoring                  = true
    key_name                    = ""
    subnet_id                   = "subnet-0ebcc614006f875bf"
    vpc_security_group_ids      = ["sg-0c67dd8fbf99fa34e"]
    associate_public_ip_address = true
    private_ip                  = "172.31.13.121"
    source_dest_check           = true

    root_block_device {
        volume_type           = "gp3"
        volume_size           = 20
        delete_on_termination = true
    }

    tags {
        "aws:ec2launchtemplate:version" = "1"
        "kubernetes.io/cluster/dev-eks-cluster1" = "owned"
        "Name" = "dev-workernode-1"
        "alpha.eksctl.io/nodegroup-name" = "dev-eks-node-1"
        "alpha.eksctl.io/nodegroup-type" = "managed"
        "k8s.io/cluster-autoscaler/enabled" = "true"
        "aws:ec2:fleet-id" = "fleet-b1c8f10c-8e89-5d8f-a698-89283935b01b"
        "aws:autoscaling:groupName" = "eks-dev-eks-node-1-20c0ffd7-7bcc-7989-277d-4c941b176d5a"
        "eks:nodegroup-name" = "dev-eks-node-1"
        "aws:eks:cluster-name" = "dev-eks-cluster1"
        "eks:cluster-name" = "dev-eks-cluster1"
        "aws:ec2launchtemplate:id" = "lt-0869c489afb8bcbed"
        "k8s.io/cluster-autoscaler/dev-eks-cluster1" = "owned"
    }
}

resource "aws_instance" "dev-openvpn-1" {
    ami                         = "ami-086728c4363b74dc3"
    availability_zone           = "ap-northeast-2c"
    ebs_optimized               = false
    instance_type               = "t2.medium"
    monitoring                  = false
    key_name                    = "DEV1-PEM-EC2"
    subnet_id                   = "subnet-0171166ffd477395a"
    vpc_security_group_ids      = ["sg-04269c1afdab0cd7b"]
    associate_public_ip_address = true
    private_ip                  = "172.31.45.172"
    source_dest_check           = true

    root_block_device {
        volume_type           = "gp2"
        volume_size           = 8
        delete_on_termination = true
    }

    tags {
        "Name" = "dev-openvpn-1"
    }
}

resource "aws_instance" "dev-bastion-1" {
    ami                         = "ami-0fd0765afb77bcca7"
    availability_zone           = "ap-northeast-2c"
    ebs_optimized               = false
    instance_type               = "t2.micro"
    monitoring                  = false
    key_name                    = "DEV1-PEM-EC2"
    subnet_id                   = "subnet-0171166ffd477395a"
    vpc_security_group_ids      = ["sg-0766059dc88081e63"]
    associate_public_ip_address = true
    private_ip                  = "172.31.45.23"
    source_dest_check           = true

    root_block_device {
        volume_type           = "gp2"
        volume_size           = 8
        delete_on_termination = true
    }

    tags {
        "Schedule" = "Oiifce Instance Schedule"
        "Name" = "dev-bastion-1"
        "state" = "started"
    }
}

resource "aws_instance" "dev-workernode-1" {
    ami                         = "ami-06270d127b7771d04"
    availability_zone           = "ap-northeast-2c"
    ebs_optimized               = false
    instance_type               = "t2.medium"
    monitoring                  = true
    key_name                    = ""
    subnet_id                   = "subnet-0171166ffd477395a"
    vpc_security_group_ids      = ["sg-0c67dd8fbf99fa34e"]
    associate_public_ip_address = true
    private_ip                  = "172.31.41.216"
    source_dest_check           = true

    root_block_device {
        volume_type           = "gp3"
        volume_size           = 20
        delete_on_termination = true
    }

    tags {
        "Name" = "dev-workernode-1"
        "alpha.eksctl.io/nodegroup-name" = "dev-eks-node-1"
        "k8s.io/cluster-autoscaler/dev-eks-cluster1" = "owned"
        "aws:autoscaling:groupName" = "eks-dev-eks-node-1-20c0ffd7-7bcc-7989-277d-4c941b176d5a"
        "aws:ec2launchtemplate:version" = "1"
        "aws:ec2:fleet-id" = "fleet-39c05306-2c29-570d-843a-23204376c9a1"
        "kubernetes.io/cluster/dev-eks-cluster1" = "owned"
        "alpha.eksctl.io/nodegroup-type" = "managed"
        "eks:cluster-name" = "dev-eks-cluster1"
        "k8s.io/cluster-autoscaler/enabled" = "true"
        "aws:ec2launchtemplate:id" = "lt-0869c489afb8bcbed"
        "aws:eks:cluster-name" = "dev-eks-cluster1"
        "eks:nodegroup-name" = "dev-eks-node-1"
    }
}

resource "aws_instance" "dev-jenkins-1" {
    ami                         = "ami-0fd0765afb77bcca7"
    availability_zone           = "ap-northeast-2d"
    ebs_optimized               = true
    instance_type               = "m6i.xlarge"
    monitoring                  = false
    key_name                    = "DEV1-PEM-EC2"
    subnet_id                   = "subnet-036503f3637909f36"
    vpc_security_group_ids      = ["sg-0e239b554ba73830b"]
    associate_public_ip_address = true
    private_ip                  = "172.31.59.147"
    source_dest_check           = true

    root_block_device {
        volume_type           = "gp2"
        volume_size           = 30
        delete_on_termination = true
    }

    tags {
        "Schedule" = "Office Instance Schedule"
        "Name" = "dev-jenkins-1"
        "state" = "started"
    }
}
