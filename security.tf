# Create a file for AWS Security Group 
# 2 security groups for 2 worker node group
# allowing only 22 port for the SSH connection
# restricting the SSH access for 10.0.0.0/8 CIDR Block
resource "aws_security_group" "worker_group_mgmt_one" {
  name_prefix = "worker_group_mgmt_one"
  vpc_id = module.vpc.vpc_id
ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
cidr_blocks = [
           "10.0.0.0/8"
     ]
  }
}
resource "aws_security_group" "worker_group_mgmt_two" {
  name_prefix = "worker_group_mgmt_two"
  vpc_id = module.vpc.vpc_id
  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
cidr_blocks = [
            "10.0.0.0/8"
      ]
    }
}
resource "aws_security_group" "all_worker_mgmt" {
  name_prefix = "all_worker_management"
  vpc_id = module.vpc.vpc_id
ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
cidr_blocks = [
            "10.0.0.0/8"
       ]
    }
}