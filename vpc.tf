# These blocks are for filtering existing VPC and Public Subnet


data "aws_vpc" "existing_ce9_vpc" {
 filter {
   name   = "tag:Name"
   values = ["vpc_ce9_learner"]
 }
}


data "aws_subnet" "existing_ce9_pub_subnet" {
 filter {
   name   = "tag:Name"
   values = ["subnet_ce9_learner_us-east-1a"]
 }
}


