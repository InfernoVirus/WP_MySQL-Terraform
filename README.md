# WP_MySQL-Terraform
launching a wordpress and mysql server using terraform

## This terraform file is made to launch a wordpress and sql server on aws
credentials are to be saved in the .aws/credentials file of the user directory

The variables.tf contains the values that are to be changed 
###### parameters that can be changed in the variable.tf file are 
      
    ----------------------------------------------------------------------- 
    | Defination               |   value in the file                      |
    |---------------------------------------------------------------------|
    | AWS instance type        |   t2.micro                               |
    | AWS instance key name    |   mykey                                  |
    | AWS security group       |   sg-01d3f122s                           |
    | AWS key path             |   mykey.pem                              |
    | AWS name of SQL instance |   sql server                             |
    | AWS name of WP instance  |   wordpress server                       |
    | AWS SQL server AMI ID    |   ami-0817d428a6fb68645 (ubuntu 18.04)   |
    | AWS WP server AMI ID     |   ami-0015b9ef68c77328d (CentOS:7)       |
    -----------------------------------------------------------------------

###### some of the parameters are not mentioned in the variales.tf like region
** if you change the AMI please also change the user accordingly in the main.tf file in the connection block 
