#common
variable "aws_region" {
  default = "us-east-1"
}
variable "key_name" {}
variable "security_groups_name" {}
variable "environment_tag" {}
#security group

variable "security_groups_ports" {
  default = [22, 80, 443, 8080]
}
variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}
variable "protocol" {
  default = "tcp"
}

#keypair
#variable "key_name" {}
#variable "filename" {}

#ec2
# variable "ami" {}
variable "instance_type" {}
variable "instance_name" {}
variable "username" {}
variable "private_key_path" {}
