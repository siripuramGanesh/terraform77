resource "aws_instance" "expense_instances" {
  count                  = length(var.instance_names)
  ami                    = data.aws_ami.expense_aws_ami.id
  instance_type          = local.instance_type
  vpc_security_group_ids = [aws_security_group.expense_security_groups.id]

  tags = {
    Name = var.instance_names[count.index]
  }

}

resource "aws_security_group" "expense_security_groups" {
  name        = "expense_security_groups"
  description = "security_groups_of_expense"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    name = "expense_security_groupp"
  }
}