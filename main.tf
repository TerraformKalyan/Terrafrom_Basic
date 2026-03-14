
# Security Group
resource "aws_security_group" "new_sg" {
  name        = "new_sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-01fa20f567ec3d498"

  tags = {
    Name = "new_sg"
  }
}