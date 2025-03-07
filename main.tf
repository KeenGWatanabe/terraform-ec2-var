locals {
 resource_prefix = "roger-vpc"
}

#declaring a aws_instance named "public"
resource "aws_instance" "public" {
 ami                         = "ami-0c614dee691cbbf37" #Challenge, find the AMI ID of Amazon Linux 2 in us-east-1
 instance_type               = "t2.micro"
 subnet_id                   = data.aws_subnet.existing_ce9_pub_subnet.id #src vpc.tf data{}
 associate_public_ip_address = true
 key_name                    = "roger-linux-kp" #Change to your keyname
 vpc_security_group_ids = [data.aws_security_group.existing_sg.id] #["sg-0885a93971d5ae801"]
 tags = {
   Name = "${ local.resource_prefix }-ec2-${ var.env }" # Ensure your 
 }
}


output "ec2_public_ip" {
 value = aws_instance.public.public_ip #print (L6 resource)aws_instance+public (L19 output)public ip
}


# resource "aws_security_group" "rds_ssh" {
#  name        = "${ local.resource_prefix }-sg" #-security-group-ssh
#  description = "Allow SSH inbound"
#  vpc_id      = data.aws_vpc.existing_ce9_vpc.id
# }


# resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
#  security_group_id = aws_security_group.rds_ssh.id
#  cidr_ipv4         = "0.0.0.0/0" 
#  from_port         = 22
#  ip_protocol       = "tcp"
#  to_port           = 22
# }