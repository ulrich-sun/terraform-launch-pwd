security_groups_name  = "sg_pwd"
key_name              = "pwd"
environment_tag       = "dev"
instance_type         = "t2.medium"
username              = "centos"
security_groups_ports = [22, 80, 443, 8080]
instance_name = "app_pwd"
