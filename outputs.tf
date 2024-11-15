output "instance_public_ip" {
  value = module.ec2_instance.public_ip
}

resource "aws_null" "name" {

}