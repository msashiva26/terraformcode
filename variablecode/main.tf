
resource "aws_instance" "key" {
ami = var.ami
instance_type = var.abc
availability_zone = var.xyz
tags = {
Name = var.name
Environment = "dev"
}
root_block_device {
volume_size = var.size
}
count = 3
}


