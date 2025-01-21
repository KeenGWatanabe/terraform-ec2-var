variable "env" {
 description = "The environment of the AWS infrastructure"
 type        = string
 default     = "dev"
}


variable "vpc_name" {
 description = "The VPC Name to use"
 type        = string
 default     = "roger-vpc2"
}


variable "subnet_name" {
 description = "The VPC Name to use"
 type        = string
 default     = "roger-public-subnet-1a"
}
