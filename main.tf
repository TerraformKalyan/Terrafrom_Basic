
# Security Group
resource "aws_security_group" "new_sg" {
  name        = "new_sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-01fa20f567ec3d498"

   egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1" #all
    cidr_blocks = var.allowed_cidr
  }

   ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks = var.allowed_cidr
  }

  tags = var.tags
}

resource "aws_instance" "expense" {
  ami           =var.ami_id
  instance_type = var.instance_name == "db" ? "t3.micro" : "t2.micro"
  vpc_security_group_ids = [ aws_security_group.new_sg.id ]
#   count = 3
  count = length(var.instance_name)

  tags = {
    Name = var.instance_name[count.index]
    
  }
}