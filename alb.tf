resource "aws_lb" "default" {
  name               = "terraform-springboot-helloapp"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${aws_security_group.default_lb.id}"]
  subnets            = ["subnet-80170ddc", "subnet-12879975"]
  enable_deletion_protection = true
  tags = {
    Environment = "dev"
  }
}
