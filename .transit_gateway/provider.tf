provider "aws" {
  region = "us-east-1"
}
provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
}
provider "aws" {
  alias  = "ohio"
  region = "us-east-2"
}
provider "aws" {
  alias  = "oregon"
  region = "us-west-2"
}

variable "vpc1_config" {
  type = map(any)
  default = {
    vpc_cidr         = "10.0.0.0/16"
    public_subnet1   = "10.0.1.0/24"
    public_subnet2   = "10.0.2.0/24"
    public_subnet3   = "10.0.3.0/24"
    private_subnet1  = "10.0.101.0/24"
    private_subnet2  = "10.0.102.0/24"
    private_subnet3  = "10.0.103.0/24"
    max_size         = 1
    min_size         = 1
    desired_capacity = 1
    image_id         = "ami-0dc2d3e4c0f9ebd18"
    instance_type    = "t2.micro"
    az1              = "us-east-1a"
    az2              = "us-east-1b"
    az3              = "us-east-1c"
  }
}

variable "vpc2_config" {
  type = map(any)
  default = {
    vpc_cidr         = "192.168.0.0/16"
    public_subnet1   = "192.168.1.0/24"
    public_subnet2   = "192.168.2.0/24"
    public_subnet3   = "192.168.3.0/24"
    private_subnet1  = "192.168.101.0/24"
    private_subnet2  = "192.168.102.0/24"
    private_subnet3  = "192.168.103.0/24"
    max_size         = 1
    min_size         = 1
    desired_capacity = 1
    image_id         = "ami-0233c2d874b811deb"
    instance_type    = "t2.micro"
    az1              = "us-east-2a"
    az2              = "us-east-2b"
    az3              = "us-east-2c"
  }
}

variable "vpc3_config" {
  type = map(any)
  default = {
    vpc_cidr         = "172.16.0.0/16"
    public_subnet1   = "172.16.1.0/24"
    public_subnet2   = "172.16.2.0/24"
    public_subnet3   = "172.16.3.0/24"
    private_subnet1  = "172.16.101.0/24"
    private_subnet2  = "172.16.102.0/24"
    private_subnet3  = "172.16.103.0/24"
    max_size         = 1
    min_size         = 1
    desired_capacity = 1
    image_id         = "ami-0dc8f589abe99f538"
    instance_type    = "t2.micro"
    az1              = "us-west-2a"
    az2              = "us-west-2b"
    az3              = "us-west-2c"
  }
}

variable "tags" {
  type = map(any)
  default = {
    Name        = "Transit-gateway"
    Environment = "Transit-gateway"
    Created_by  = "Terraform"
  }
}


########################################################################
module "vpc1" {
  providers = {
    aws = aws.virginia
  }
  source             = "terraform-aws-modules/vpc/aws"
  name               = "my-vpc"
  cidr               = var.vpc1_config["vpc_cidr"]
  azs                = [var.vpc1_config["az1"], var.vpc1_config["az2"], var.vpc1_config["az3"]]
  private_subnets    = [var.vpc1_config["private_subnet1"], var.vpc1_config["private_subnet2"], var.vpc1_config["private_subnet3"]]
  public_subnets     = [var.vpc1_config["public_subnet1"], var.vpc1_config["public_subnet2"], var.vpc1_config["public_subnet3"]]
  enable_nat_gateway = false
  enable_vpn_gateway = false
  tags               = var.tags
}


output "vpc1_public_subnets" {
  value = module.vpc1.public_subnets
}

output "vpc1_private_subnets" {
  value = module.vpc1.private_subnets
}


module "key_pair_virginia" {
  providers = {
    aws = aws.virginia
  }
  source     = "terraform-aws-modules/key-pair/aws"
  key_name   = "transit-gateway"
  public_key = file("~/.ssh/id_rsa.pub")
}


module "virginia-sec-group" {
  providers = {
    aws = aws.virginia
  }
  source      = "terraform-aws-modules/security-group/aws"
  name        = "tg-sec-group"
  description = "Security group for virginia-sec-group with custom ports open within VPC, and PostgreSQL publicly open"
  vpc_id      = module.vpc1.vpc_id
  ingress_with_cidr_blocks = [
    {
      rule        = "all-all"
      cidr_blocks = "0.0.0.0/0"
      description = "virginia-sec-group ports"
    },
  ]
  egress_with_cidr_blocks = [
    {
      rule        = "all-all"
      cidr_blocks = "0.0.0.0/0"
      description = "virginia-sec-group ports"
    },
  ]
}

module "virginia_instance" {
  providers = {
    aws = aws.virginia
  }
  source                    = "terraform-aws-modules/autoscaling/aws"
  version                   = "~> 4.0"
  name                      = "virginia_instance"
  min_size                  = var.vpc1_config["min_size"]
  max_size                  = var.vpc1_config["max_size"]
  desired_capacity          = var.vpc1_config["desired_capacity"]
  wait_for_capacity_timeout = 0
  health_check_type         = "EC2"
  vpc_zone_identifier       = [module.vpc1.public_subnets[0]]
  lt_name                   = "TG-asg"
  description               = "Launch template for TG"
  update_default_version    = true
  use_lt                    = true
  create_lt                 = true
  image_id                  = var.vpc1_config["image_id"]
  instance_type             = "t3.micro"
  key_name                  = module.key_pair_virginia.key_pair_key_name
  ebs_optimized             = false
  enable_monitoring         = false
  security_groups           = [module.virginia-sec-group.security_group_id]
  block_device_mappings = [
    {
      # Root volume
      device_name = "/dev/xvda"
      no_device   = 0
      ebs = {
        delete_on_termination = true
        volume_size           = 20
        volume_type           = "gp2"
      }
    },
  ]
  tags_as_map = var.tags
}



######################################################################
module "vpc2" {
  providers = {
    aws = aws.ohio
  }
  source             = "terraform-aws-modules/vpc/aws"
  name               = "my-vpc"
  cidr               = var.vpc2_config["vpc_cidr"]
  azs                = [var.vpc2_config["az1"], var.vpc2_config["az2"], var.vpc2_config["az3"]]
  private_subnets    = [var.vpc2_config["private_subnet1"], var.vpc2_config["private_subnet2"], var.vpc2_config["private_subnet3"]]
  public_subnets     = [var.vpc2_config["public_subnet1"], var.vpc2_config["public_subnet2"], var.vpc2_config["public_subnet3"]]
  enable_nat_gateway = false
  enable_vpn_gateway = false
  tags               = var.tags
}

output "vpc2_public_subnets" {
  value = module.vpc2.public_subnets
}

output "vpc2_private_subnets" {
  value = module.vpc2.private_subnets
}


module "key_pair_ohio" {
  providers = {
    aws = aws.ohio
  }
  source     = "terraform-aws-modules/key-pair/aws"
  key_name   = "transit-gateway"
  public_key = file("~/.ssh/id_rsa.pub")
}


module "ohio-sec-group" {
  providers = {
    aws = aws.ohio
  }
  source      = "terraform-aws-modules/security-group/aws"
  name        = "tg-sec-group"
  description = "Security group for ohio-sec-group with custom ports open within VPC, and PostgreSQL publicly open"
  vpc_id      = module.vpc2.vpc_id
  ingress_with_cidr_blocks = [
    {
      rule        = "all-all"
      cidr_blocks = "0.0.0.0/0"
      description = "ohio-sec-group ports"
    },
  ]
  egress_with_cidr_blocks = [
    {
      rule        = "all-all"
      cidr_blocks = "0.0.0.0/0"
      description = "ohio-sec-group ports"
    },
  ]
}


module "ohio-instance" {
  providers = {
    aws = aws.ohio
  }
  source                    = "terraform-aws-modules/autoscaling/aws"
  version                   = "~> 4.0"
  name                      = "ohio-instance"
  min_size                  = var.vpc2_config["min_size"]
  max_size                  = var.vpc2_config["max_size"]
  desired_capacity          = var.vpc2_config["desired_capacity"]
  wait_for_capacity_timeout = 0
  health_check_type         = "EC2"
  vpc_zone_identifier       = [module.vpc2.public_subnets[0]]
  lt_name                   = "TG-asg"
  description               = "Launch template for TG"
  update_default_version    = true
  use_lt                    = true
  create_lt                 = true
  image_id                  = var.vpc2_config["image_id"]
  instance_type             = "t3.micro"
  key_name                  = module.key_pair_ohio.key_pair_key_name
  ebs_optimized             = false
  enable_monitoring         = false
  security_groups           = [module.ohio-sec-group.security_group_id]
  block_device_mappings = [
    {
      # Root volume
      device_name = "/dev/xvda"
      no_device   = 0
      ebs = {
        delete_on_termination = true
        volume_size           = 20
        volume_type           = "gp2"
      }
    },
  ]
  tags_as_map = var.tags
}
######################################################################
module "vpc3" {
  providers = {
    aws = aws.oregon
  }
  source             = "terraform-aws-modules/vpc/aws"
  name               = "my-vpc"
  cidr               = var.vpc3_config["vpc_cidr"]
  azs                = [var.vpc3_config["az1"], var.vpc3_config["az2"], var.vpc3_config["az3"]]
  private_subnets    = [var.vpc3_config["private_subnet1"], var.vpc3_config["private_subnet2"], var.vpc3_config["private_subnet3"]]
  public_subnets     = [var.vpc3_config["public_subnet1"], var.vpc3_config["public_subnet2"], var.vpc3_config["public_subnet3"]]
  enable_nat_gateway = false
  enable_vpn_gateway = false
  tags               = var.tags
}

output "vpc3_public_subnets" {
  value = module.vpc3.public_subnets
}

output "vpc3_private_subnets" {
  value = module.vpc3.private_subnets
}

module "key_pair_oregon" {
  providers = {
    aws = aws.oregon
  }
  source     = "terraform-aws-modules/key-pair/aws"
  key_name   = "transit-gateway"
  public_key = file("~/.ssh/id_rsa.pub")
}


module "oregon-sec-group" {
  providers = {
    aws = aws.oregon
  }
  source      = "terraform-aws-modules/security-group/aws"
  name        = "tg-sec-group"
  description = "Security group for oregon-sec-group with custom ports open within VPC, and PostgreSQL publicly open"
  vpc_id      = module.vpc3.vpc_id
  ingress_with_cidr_blocks = [
    {
      rule        = "all-all"
      cidr_blocks = "0.0.0.0/0"
      description = "oregon-sec-group ports"
    },
  ]
  egress_with_cidr_blocks = [
    {
      rule        = "all-all"
      cidr_blocks = "0.0.0.0/0"
      description = "oregon-sec-group ports"
    },
  ]
}


module "oregon_instance" {
  providers = {
    aws = aws.oregon
  }
  source                    = "terraform-aws-modules/autoscaling/aws"
  version                   = "~> 4.0"
  name                      = "oregon_instance"
  min_size                  = var.vpc3_config["min_size"]
  max_size                  = var.vpc3_config["max_size"]
  desired_capacity          = var.vpc3_config["desired_capacity"]
  wait_for_capacity_timeout = 0
  health_check_type         = "EC2"
  vpc_zone_identifier       = [module.vpc3.public_subnets[0]]
  lt_name                   = "TG-asg"
  description               = "Launch template for TG"
  update_default_version    = true
  use_lt                    = true
  create_lt                 = true
  image_id                  = var.vpc3_config["image_id"]
  instance_type             = "t3.micro"
  key_name                  = module.key_pair_oregon.key_pair_key_name
  ebs_optimized             = false
  enable_monitoring         = false
  security_groups           = [module.oregon-sec-group.security_group_id]
  block_device_mappings = [
    {
      # Root volume
      device_name = "/dev/xvda"
      no_device   = 0
      ebs = {
        delete_on_termination = true
        volume_size           = 20
        volume_type           = "gp2"
      }
    },
  ]
  tags_as_map = var.tags
}