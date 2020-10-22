variable "instancetype" {
   default = "t2.micro"
}
# here put the name of key which you want to use key should be existing
variable "instancekey" {
    default = "mykey"
}
# select the security group id replace {sg-01d28}
variable "securitygrp" {
    default = "sg-01d283f981734226d"
}
#   keypath [complete path of the key replace {mykey.pem}]
variable "keypath" {
    default = "mykey.pem"
}
# the name of the sql instance
variable "sqlinstancename" {
    default = "sql server"
}
# the name of the wordpress instance
variable "wpinstancename" {
    default = "wordpress server"
}
# here ubuntu 18.04 is used as the base for mysql
variable "amisql" {
    default = "ami-0817d428a6fb68645"
}
# here centos:7 is used as the base for wordpress
variable "amiwordpress" {
    default = "ami-0015b9ef68c77328d"
}