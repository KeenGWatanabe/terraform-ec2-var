# These blocks are for filtering existing VPC and Public Subnet


data "aws_vpc" "existing_ce9_vpc" {
 filter {
   name   = "tag:Name"
   values = ["ce9-coaching-shared-vpc"] #"roger-vpc2"
 }
}


data "aws_subnet" "existing_ce9_pub_subnet" {
 filter {
   name   = "tag:Name"
   values = ["ce9-coaching-shared-vpc-public-us-east-1a"] #"roger-public-subnet-1a"
 }
}

data "aws_security_group" "allow_ssh" {
  filter {
    name   = "group-name"
    values = ["roger-rds-sg"] #Replace with your security group name
  }
}

