resource "aws_network_interface" "eni-0bd9346c46bd1d08f" {
    subnet_id         = "subnet-0ebcc614006f875bf"
    private_ips       = ["172.31.0.241"]
    security_groups   = ["sg-05f8304a08b36fe3d"]
    source_dest_check = true
}

resource "aws_network_interface" "eni-099f27b346aa2eb29" {
    subnet_id         = "subnet-036503f3637909f36"
    private_ips       = ["172.31.59.147"]
    security_groups   = ["sg-0e239b554ba73830b"]
    source_dest_check = true
    attachment {
        instance     = "i-03f070c8553d53065"
        device_index = 0
    }
}

resource "aws_network_interface" "eni-0fd3c6e84a2ff0d84" {
    subnet_id         = "subnet-0171166ffd477395a"
    private_ips       = ["172.31.42.232", "172.31.39.108", "172.31.43.42", "172.31.47.213", "172.31.47.3", "172.31.43.97"]
    security_groups   = ["sg-0c67dd8fbf99fa34e"]
    source_dest_check = true
    attachment {
        instance     = "i-061cf35dd9533c80e"
        device_index = 1
    }
    tags {
        "node.k8s.amazonaws.com/instance_id" = "i-061cf35dd9533c80e"
        "node.k8s.amazonaws.com/createdAt" = "2022-07-15T02:29:47Z"
    }
}

resource "aws_network_interface" "eni-04149b4de9e8c7fac" {
    subnet_id         = "subnet-0171166ffd477395a"
    private_ips       = ["172.31.45.23"]
    security_groups   = ["sg-0766059dc88081e63"]
    source_dest_check = true
    attachment {
        instance     = "i-0df9fece6776e59ae"
        device_index = 0
    }
}

resource "aws_network_interface" "eni-05b339ad9f65b671e" {
    subnet_id         = "subnet-0ebcc614006f875bf"
    private_ips       = ["172.31.6.254", "172.31.3.249", "172.31.1.38", "172.31.6.147", "172.31.15.178", "172.31.3.97"]
    security_groups   = ["sg-0c67dd8fbf99fa34e"]
    source_dest_check = true
    attachment {
        instance     = "i-0a94c626af47ac167"
        device_index = 2
    }
    tags {
        "node.k8s.amazonaws.com/createdAt" = "2022-12-01T00:34:06Z"
        "node.k8s.amazonaws.com/instance_id" = "i-0a94c626af47ac167"
    }
}

resource "aws_network_interface" "eni-019c1c5001ddf162b" {
    subnet_id         = "subnet-0171166ffd477395a"
    private_ips       = ["172.31.32.247"]
    security_groups   = ["sg-0978e85959733c1b4"]
    source_dest_check = true
}

resource "aws_network_interface" "eni-07fd72dcdd5432ef1" {
    subnet_id         = "subnet-09e571b5451d8c138"
    private_ips       = ["172.31.22.80"]
    security_groups   = ["sg-0c67dd8fbf99fa34e", "sg-03fe622ac89f72e6b"]
    source_dest_check = true
}

resource "aws_network_interface" "eni-0882eddb12b174de3" {
    subnet_id         = "subnet-0ebcc614006f875bf"
    private_ips       = ["172.31.5.182", "172.31.12.189", "172.31.11.120", "172.31.1.229", "172.31.7.2", "172.31.2.32"]
    security_groups   = ["sg-0c67dd8fbf99fa34e"]
    source_dest_check = true
    attachment {
        instance     = "i-0a94c626af47ac167"
        device_index = 1
    }
    tags {
        "node.k8s.amazonaws.com/instance_id" = "i-0a94c626af47ac167"
        "node.k8s.amazonaws.com/createdAt" = "2022-07-18T04:14:54Z"
    }
}

resource "aws_network_interface" "eni-0253302aefd819f62" {
    subnet_id         = "subnet-036503f3637909f36"
    private_ips       = ["172.31.61.201"]
    security_groups   = ["sg-053b2533334805dbb", "sg-0e239b554ba73830b", "sg-04269c1afdab0cd7b"]
    source_dest_check = true
}

resource "aws_network_interface" "eni-0809d68a445382531" {
    subnet_id         = "subnet-0171166ffd477395a"
    private_ips       = ["172.31.41.216", "172.31.42.254", "172.31.40.58", "172.31.46.169", "172.31.42.137", "172.31.41.197"]
    security_groups   = ["sg-0c67dd8fbf99fa34e"]
    source_dest_check = true
    attachment {
        instance     = "i-061cf35dd9533c80e"
        device_index = 0
    }
    tags {
        "node.k8s.amazonaws.com/instance_id" = "i-061cf35dd9533c80e"
    }
}

resource "aws_network_interface" "eni-03e1f36d84f3c0252" {
    subnet_id         = "subnet-0171166ffd477395a"
    private_ips       = ["172.31.45.11"]
    security_groups   = ["sg-0c359036946874454"]
    source_dest_check = true
}

resource "aws_network_interface" "eni-018e4675f4982567d" {
    subnet_id         = "subnet-09e571b5451d8c138"
    private_ips       = ["172.31.19.79"]
    security_groups   = ["sg-0e239b554ba73830b"]
    source_dest_check = true
}

resource "aws_network_interface" "eni-02d917766f72d2144" {
    subnet_id         = "subnet-0171166ffd477395a"
    private_ips       = ["172.31.45.161", "172.31.40.42", "172.31.42.215", "172.31.47.87", "172.31.41.228", "172.31.43.194"]
    security_groups   = ["sg-0c67dd8fbf99fa34e"]
    source_dest_check = true
    attachment {
        instance     = "i-061cf35dd9533c80e"
        device_index = 2
    }
    tags {
        "node.k8s.amazonaws.com/createdAt" = "2022-11-30T01:05:29Z"
        "node.k8s.amazonaws.com/instance_id" = "i-061cf35dd9533c80e"
    }
}

resource "aws_network_interface" "eni-0543a207f28c77da5" {
    subnet_id         = "subnet-0ebcc614006f875bf"
    private_ips       = ["172.31.0.177"]
    security_groups   = ["sg-0978e85959733c1b4"]
    source_dest_check = true
}

resource "aws_network_interface" "eni-08ae82c6b64df55bb" {
    subnet_id         = "subnet-0171166ffd477395a"
    private_ips       = ["172.31.44.134"]
    security_groups   = ["sg-04269c1afdab0cd7b"]
    source_dest_check = true
}

resource "aws_network_interface" "eni-0e3b05148500f56cb" {
    subnet_id         = "subnet-09e571b5451d8c138"
    private_ips       = ["172.31.19.170"]
    security_groups   = ["sg-053b2533334805dbb", "sg-0e239b554ba73830b", "sg-04269c1afdab0cd7b"]
    source_dest_check = true
}

resource "aws_network_interface" "eni-072cf90cf66deb62f" {
    subnet_id         = "subnet-0171166ffd477395a"
    private_ips       = ["172.31.45.172"]
    security_groups   = ["sg-04269c1afdab0cd7b"]
    source_dest_check = true
    attachment {
        instance     = "i-0fa6f804885402d7b"
        device_index = 0
    }
}

resource "aws_network_interface" "eni-0e2cc121fcd52bb4e" {
    subnet_id         = "subnet-0171166ffd477395a"
    private_ips       = ["172.31.35.61"]
    security_groups   = ["sg-0c67dd8fbf99fa34e", "sg-03fe622ac89f72e6b"]
    source_dest_check = true
}

resource "aws_network_interface" "eni-054abbbdeffb14ec8" {
    subnet_id         = "subnet-0ebcc614006f875bf"
    private_ips       = ["172.31.8.245"]
    security_groups   = ["sg-0c359036946874454"]
    source_dest_check = true
}

resource "aws_network_interface" "eni-0a90940630a1e17d7" {
    subnet_id         = "subnet-0171166ffd477395a"
    private_ips       = ["172.31.38.26"]
    security_groups   = ["sg-0e239b554ba73830b"]
    source_dest_check = true
}

resource "aws_network_interface" "eni-0f7e7185c6b24a5f5" {
    subnet_id         = "subnet-0171166ffd477395a"
    private_ips       = ["172.31.32.56"]
    security_groups   = ["sg-053b2533334805dbb", "sg-0e239b554ba73830b", "sg-04269c1afdab0cd7b"]
    source_dest_check = true
}

resource "aws_network_interface" "eni-0c3f158fefcf777df" {
    subnet_id         = "subnet-0171166ffd477395a"
    private_ips       = ["172.31.45.113"]
    security_groups   = ["sg-0e239b554ba73830b"]
    source_dest_check = true
}

resource "aws_network_interface" "eni-00db790002a9413fb" {
    subnet_id         = "subnet-0ebcc614006f875bf"
    private_ips       = ["172.31.4.88"]
    security_groups   = ["sg-053b2533334805dbb", "sg-0e239b554ba73830b", "sg-04269c1afdab0cd7b"]
    source_dest_check = true
}

resource "aws_network_interface" "eni-0a4673c3cdf944e30" {
    subnet_id         = "subnet-0171166ffd477395a"
    private_ips       = ["172.31.46.146"]
    security_groups   = ["sg-05f8304a08b36fe3d"]
    source_dest_check = true
}

resource "aws_network_interface" "eni-0cb03f7e174d769fb" {
    subnet_id         = "subnet-0ebcc614006f875bf"
    private_ips       = ["172.31.13.121", "172.31.6.62", "172.31.2.125", "172.31.13.151", "172.31.3.34", "172.31.6.65"]
    security_groups   = ["sg-0c67dd8fbf99fa34e"]
    source_dest_check = true
    attachment {
        instance     = "i-0a94c626af47ac167"
        device_index = 0
    }
    tags {
        "node.k8s.amazonaws.com/instance_id" = "i-0a94c626af47ac167"
    }
}

