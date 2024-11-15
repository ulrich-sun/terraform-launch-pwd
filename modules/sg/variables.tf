variable "security_groups_name" {}
variable "security_groups_ports" {
  default = [22, 80, 443, 8080]
}
variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}
variable "protocol" {
  default = "tcp"
}
variable "environment_tag" {}