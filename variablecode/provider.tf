provider  "aws" {
region = "us-east-1"
access_key =  "AKIA2PNTPJUZ7FHMJWMK"
secret_key = "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"
}

resource "aws_instance" "jagan" {
ami = "ami-0dfcb1ef8550277af"
instance_type = "t1.micro"
availability_zone = "us-east-1b"
associate_public_ip_address = var.enable_public_ip
tags = {
Name = "srvs"
}
}

variable "enable_public_ip" {
type = bool
default = true
}
