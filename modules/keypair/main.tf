resource "aws_key_pair" "key_pwd" {
  key_name   = var.key_name
  public_key = tls_private_key.name.public_key_openssh
}

resource "tls_private_key" "tls_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "local_pwd" {
  filename        = var.filename
  content         = tls_private_key.name.private_key_pem
  file_permission = "0400"
}