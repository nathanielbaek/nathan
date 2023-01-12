########## [variables.tf] ##########

provider "aws" {
  region = var.region
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "default"
}

variable "region" {
    description = "Region"
    type        = string
    default     = "ap-northeast-2" #서울리전
}

variable "name" {
    description = "Project Name"
    type        = string
    default     = "LF-PJTC-DEV"
}

variable "allow_ip_address" {
    description = "SSH Allow IP list"
    type    = list(string)
    default = [
        "183.96.3.180/32",       #OFFICE IP
    ]
}

variable "key_name" {
    description = "Key-pair"
    type        = string
    default     = "admin"       #pem키 입력
}

variable "vpc_cidr" {
    description = "VPC CIDR"
    type        = string
    default     = "10.0.0.0/16"
}

variable "az_names" {
    description = "Availability Zones"
    type    = list(string)
    default = [
        "ap-northeast-2a",
        "ap-northeast-2c"
    ]
}

variable "public_subnets" {
    description = "Public Subnets"
    type = list(object({
        zone = string
        cidr = string
    }))

    default = [
        {
            zone = "ap-northeast-2a"
            cidr = "10.0.0.0/24"
        },
        {
            zone = "ap-northeast-2c"
            cidr = "10.0.1.0/24"
        }
    ]
}

variable "private_subnets" {
    description = "Private Subnets"
    type    = list(object({
        zone = string
        cidr = string
    }))

    default = [
        {
            zone = "ap-northeast-2a"
            cidr = "10.0.10.0/24"
        },
        {
            zone = "ap-northeast-2c"
            cidr = "10.0.11.0/24"
        },
    ]
}

variable "tags" {
    default = {
        "LF" = "ProjectC" #Tag 입력
    }
}
