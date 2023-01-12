#EC2의 ami 인수에 직접 AMI ID 를 기입해도 되지만 데이터 소스를 활용하여 좀 더 능동적인 값이 설정되도록 하였습니다.
#데이터 소스란 테라폼 외부에서 정의된 값을 편하게 사용할 수 있도록 해주는 블록입니다.
#프로바이더마다 제공하는 데이터 소스가 다르므로 문서를 참조해야합니다.
#선언은 data 블록으로 할 수 있습니다. 필터를 활용하여 검색 범위를 좁힐 수 있습니다.
#데이터 소스에 대해선 공식 문서을 참고해주세요.
#키 페어는 새로 생성하지 않고 기존에 있던 키 페어를 그대로 사용하였습니다.
#AWS 콘솔에서 직접 키 페어를 등록해도 되지만 테라폼을 통하여 새로 생성한다면 예전 글을 참고해주세요.
#작성이 끝났다면 plan으로 결과를 확인합니다.


data "aws_ami" "amazonLinux" {
  most_recent = true
  owners = [ "amazon" ]

  filter {
    name = "name"
    values = [ "amzn2-ami-hvm-2.0.*" ]
  }

  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }

  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
}

resource "aws_instance" "LF-PJTC-DEV1" {
  ami = data.aws_ami.amazonLinux.id
  instance_type = "m4.10xlarge"
  vpc_security_group_ids = [
    aws_security_group.privateEC2SG01.id  #시큐리티 그룹지정!
   ]
  subnet_id = aws_subnet.privateEC2Subnet1.id #서브넷 지정!
  key_name = "publicTestKey"   #PEM Key 네임 지정!

  root_block_device {
    volume_size = 500
    volume_type = "gp3" #General Purpose SSD IOPS 16000 / 처리량 1,000MiB/s
    tags = {
      "Name" = "LF-PJTC-DEV1-VOLUME"
    }
  }

  tags = {
    "Name" = "test-private-ec2-01"
  }
}

resource "aws_instance" "LF-PJTC-DEV2" {
  ami = data.aws_ami.amazonLinux.id
  instance_type = "t3.medium"
  vpc_security_group_ids = [
    aws_security_group.privateEC2SG01.id
   ]
  subnet_id = aws_subnet.privateEC2Subnet2.id
  key_name = "publicTestKey"

  root_block_device {
    volume_size = 50
    volume_type = "gp3"
    tags = {
      "Name" = "test-private-ec2-02-vloume-1"
    }
  }

  tags = {
    "Name" = "test-private-ec2-02"
  }
}
