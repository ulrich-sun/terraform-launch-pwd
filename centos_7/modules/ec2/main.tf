resource "aws_instance" "app_pwd" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  security_groups             = ["${var.security_groups_name}"]
  associate_public_ip_address = true
  root_block_device {
    volume_size           = 20
    volume_type           = "gp2"
    encrypted             = true
    delete_on_termination = true
  } 
  connection {
      type        = "ssh"
      user        = var.username
      private_key = file(var.private_key_path)
      host        = self.public_ip
  }
  provisioner "file" {
    source      = "./scripts/update-os.sh"
    destination = "/tmp/update-os.sh"
  }
  provisioner "file" {
    source      = "./scripts/launch-pwd.sh"
    destination = "/tmp/launch-pwd.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo chmod +x /tmp/update-os.sh",
      "sudo chmod +x /tmp/launch-pwd.sh",
      "sudo /tmp/update-os.sh",
      "sudo /tmp/launch-pwd.sh"
    ]
  }
  tags = {
    Environment = var.environment_tag
    Name        = var.instance_name
  }
}

