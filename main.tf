provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "sql" {
  ami           = var.amisql
  instance_type = var.instancetype
  key_name = var.instancekey
  vpc_security_group_ids = [var.securitygrp]
  tags = {
    Name = var.sqlinstancename
  }
  provisioner "file" {
    source      = "sql.sh"
    destination = "/home/ubuntu/sql.sh"
  }
  # Change permissions for excution.
  provisioner "remote-exec" {
    inline = [
      "chmod +x /home/ubuntu/sql.sh",
      "sudo /home/ubuntu/sql.sh",
    ]
  }
  
  # Login with the aws key.
  connection {
    type        = "ssh"
    user        = "ubuntu"
    password    = ""
    private_key = file(var.keypath)
    host        = self.public_ip
  }
}
resource "aws_instance" "wordpress" {
  ami           = var.amiwordpress
  instance_type = var.instancetype
  key_name = var.instancekey
  vpc_security_group_ids = [var.securitygrp]
  tags = {
    Name = var.wpinstancename
  }
  provisioner "file" {
    source      = "wp.sh"
    destination = "/home/centos/wp.sh"
  }
  # Change permissions for excution.
  provisioner "remote-exec" {
    inline = [
      "chmod +x /home/centos/wp.sh",
      "sudo /home/centos/wp.sh",
    ]
  }
  
  # Login with the aws key.
  connection {
    type        = "ssh"
    user        = "centos"
    password    = ""
    private_key = file(var.keypath)
    host        = self.public_ip
  }
}
