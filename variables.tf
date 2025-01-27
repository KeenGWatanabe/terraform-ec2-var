variable "env" {
 description = "The environment of the AWS infrastructure"
 type        = string
 default     = "rds"
}


variable "vpc_name" {
 description = "The VPC Name to use"
 type        = string
 default     = "ce9-coaching-shared-vpc" #roger-vpc2
}


variable "subnet_name" {
 description = "The VPC Name to use"
 type        = string
 default     = "ce9-coaching-shared-vpc-public-us-east-1a" #roger-public-subnet-1a
}
