#콘솔에서 작업하듯이 로드 밸런서를 생성하고 타겟 그룹과 리스너를 작성 후 로드 밸런서에 연결합니다.
#HTTP의 80 포트만 포워딩하는 단순한 구성이라 내용이 길지 않지만 HTTPS나 내부 로드 밸런싱 등의 설정도 가능합니다.

resource "aws_alb" "test" {
  name = "test-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [ aws_security_group.publicSG01.id ]
  subnets = [ aws_subnet.publicSubnet1.id , aws_subnet.publicSubnet2.id ]
  enable_cross_zone_load_balancing = true
}


resource "aws_alb_target_group" "test" {
  name = "tset-alb-tg"
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.test.id
}

resource "aws_alb_target_group_attachment" "privateInstance01" {
  target_group_arn = aws_alb_target_group.test.arn
  target_id = aws_instance.testEC201.id
  port = 80
}

resource "aws_alb_target_group_attachment" "privateInstance02" {
  target_group_arn = aws_alb_target_group.test.arn
  target_id = aws_instance.testEC202.id
  port = 80
}

resource "aws_alb_listener" "test" {
  load_balancer_arn = aws_alb.test.arn
  port = 80
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_alb_target_group.test.arn
  }
}
