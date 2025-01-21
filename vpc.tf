# These blocks are for filtering existing VPC and Public Subnet


data "aws_vpc" "existing_ce9_vpc" {
 filter {
   name   = "tag:Name"
   values = ["roger-vpc2"]
 }
}


data "aws_subnet" "existing_ce9_pub_subnet" {
 filter {
   name   = "tag:Name"
   values = ["roger-public-subnet-1a"]
 }
}


