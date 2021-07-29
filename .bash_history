git pull
terraform apply --auto-approve
git pull
terraform apply --auto-approve
git pull
terraform apply --auto-approve
git pull
terraform apply --auto-approve
git pull
terraform apply --auto-approve
terraform destroy
git pull
cd /tmp/
git clone git@github.com:AsiaO1/terraform-aws-vpc.git
ls
cp -r * /tmp/terraform-aws-vpc/
ls /tmp/terraform-aws-vpc/
git config --global user.name AsiaO1
git config --global user.email oa.kalmuratovna@gmail.com
terraform init
terraform init
terraform init
terraform pla
terraform plan 
terraform apply --auto-apply
terraform apply --auto-approve
terraform apply --auto-apply
terraform apply --auto-approve
terraform mnt
terraform fmt
terraform apply --auto-approve
touch object_file
find object file
find object_file
pwd
ls
terraform apply --auto-approve
touch object-file
terraform apply --auto-approve
terraform destroy
terraform init
terraform apply --auto-approve
git pull
terraform init
terraform apply --auto-approve
terraform destroy
git pull
git pull
curl https://bucket-to-check-aws-tasks.s3.amazonaws.com/AWS/scripts/EC2/ticket2.sh
terraform init
terraform plan
terraform output
terraform apply
terraform output
terraform apply
curl https://bucket-to-check-aws-tasks.s3.amazonaws.com/AWS/scripts/EC2/ticket2.sh
git clone https://github.com/AsiaO1/interactive-learning-tasks.git
terraform init
terraform init
terraform appkly
terraform apply
terraform plan
terraform init
git pull
terraform apply
terraform apply
git pull
terraform apply
terraform state list
git pull
terraform apply
git pull
terrafom apply
terraform apply
terraform destroy
git pull 
terraform init
terraform apply -auto-approve
git pull 
terraform apply -auto-approve
git pull 
terraform apply -auto-approve
git pull 
terraform apply -auto-approve
git pull
terraform apply -auto-approve
git pull
terraform apply -auto-approve
git pull
terraform apply -auto-approve
git pull
terraform apply -auto-approve
git pull
terraform destroy
git pull
terraform init
terraform apply -auto-approve
git pull
terraform apply -auto-approve
terraform state list
terraform destroy -auto-approve
git pull
git pull
git pull
git pull
curl https://bucket-to-check-aws-tasks.s3.amazonaws.com/AWS/scripts/EC2/ticket2.sh
terraform init
terraform apply
terraform init
terraform destroy
terraform init
terraform init
terraform init
terraform aply
git pull
terraform apply
terraorm init
terraform init
git pull
git pull
terraform init
terraform apply
git pull
terraform apply -auto-approve
git pull
terraform apply -auto-approve
git pull
terraform apply -auto-approve
git pull
terraform apply -auto-approve
git pull
terraform apply -auto-approve
git pull
terraform apply -auto-approve
git pull
terraform apply -auto-approve
terraform destroy 
git pull
terraform apply -auto-approve
git pull
terraform destroy
cd /tmp
git clone git@github.com:AsiaO1/terraform-aws-asg.git
ls
ls
cp * /tmp/terraform-aws-asg
ls /tmp/terraform-aws-asg
cd /tmp/terraform-aws-asg
ls
git add.
git add .
git commit -m "added module"
git push
pwd
code .
curl https://bucket-to-check-aws-tasks.s3.amazonaws.com/AWS/scripts/EC2/ticket2.sh|sh
bash -c "$(curl https://bucket-to-check-aws-tasks.s3.amazonaws.com/AWS/scripts/shared_scripts/transit_gateway.sh)"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id                          = (known after apply)
    }
  # module.vpc1.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-east-1a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.0.1.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                        = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id                          = (known after apply)
    }
  # module.vpc1.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-east-1b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.0.2.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                        = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id                          = (known after apply)
    }
  # module.vpc1.aws_subnet.public[2] will be created
  + resource "aws_subnet" "public" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-east-1c"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.0.3.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                        = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id                          = (known after apply)
    }
  # module.vpc1.aws_vpc.this[0] will be created
  + resource "aws_vpc" "this" {
      + arn                              = (known after apply)
      + assign_generated_ipv6_cidr_block = false
      + cidr_block                       = "10.0.0.0/16"
      + default_network_acl_id           = (known after apply)
      + default_route_table_id           = (known after apply)
      + default_security_group_id        = (known after apply)
      + dhcp_options_id                  = (known after apply)
      + enable_classiclink               = (known after apply)
      + enable_classiclink_dns_support   = (known after apply)
      + enable_dns_hostnames             = false
      + enable_dns_support               = true
      + id                               = (known after apply)
      + instance_tenancy                 = "default"
      + ipv6_association_id              = (known after apply)
      + ipv6_cidr_block                  = (known after apply)
      + main_route_table_id              = (known after apply)
      + owner_id                         = (known after apply)
      + tags                             = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                         = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
    }
  # module.vpc2.aws_internet_gateway.this[0] will be created
  + resource "aws_internet_gateway" "this" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id   = (known after apply)
    }
  # module.vpc2.aws_route.public_internet_gateway[0] will be created
  + resource "aws_route" "public_internet_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + gateway_id             = (known after apply)
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)
      + timeouts {
          + create = "5m"
        }
    }
  # module.vpc2.aws_route_table.private[0] will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all         = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id           = (known after apply)
    }
  # module.vpc2.aws_route_table.private[1] will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all         = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id           = (known after apply)
    }
  # module.vpc2.aws_route_table.private[2] will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all         = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id           = (known after apply)
    }
  # module.vpc2.aws_route_table.public[0] will be created
  + resource "aws_route_table" "public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all         = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id           = (known after apply)
    }
  # module.vpc2.aws_route_table_association.private[0] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }
  # module.vpc2.aws_route_table_association.private[1] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }
  # module.vpc2.aws_route_table_association.private[2] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }
  # module.vpc2.aws_route_table_association.public[0] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }
  # module.vpc2.aws_route_table_association.public[1] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }
  # module.vpc2.aws_route_table_association.public[2] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }
  # module.vpc2.aws_subnet.private[0] will be created
  + resource "aws_subnet" "private" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-east-2a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "192.168.101.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                        = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id                          = (known after apply)
    }
  # module.vpc2.aws_subnet.private[1] will be created
  + resource "aws_subnet" "private" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-east-2b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "192.168.102.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                        = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id                          = (known after apply)
    }
  # module.vpc2.aws_subnet.private[2] will be created
  + resource "aws_subnet" "private" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-east-2c"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "192.168.103.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                        = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id                          = (known after apply)
    }
  # module.vpc2.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-east-2a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "192.168.1.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                        = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id                          = (known after apply)
    }
  # module.vpc2.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-east-2b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "192.168.2.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                        = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id                          = (known after apply)
    }
  # module.vpc2.aws_subnet.public[2] will be created
  + resource "aws_subnet" "public" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-east-2c"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "192.168.3.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                        = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id                          = (known after apply)
    }
  # module.vpc2.aws_vpc.this[0] will be created
  + resource "aws_vpc" "this" {
      + arn                              = (known after apply)
      + assign_generated_ipv6_cidr_block = false
      + cidr_block                       = "192.168.0.0/16"
      + default_network_acl_id           = (known after apply)
      + default_route_table_id           = (known after apply)
      + default_security_group_id        = (known after apply)
      + dhcp_options_id                  = (known after apply)
      + enable_classiclink               = (known after apply)
      + enable_classiclink_dns_support   = (known after apply)
      + enable_dns_hostnames             = false
      + enable_dns_support               = true
      + id                               = (known after apply)
      + instance_tenancy                 = "default"
      + ipv6_association_id              = (known after apply)
      + ipv6_cidr_block                  = (known after apply)
      + main_route_table_id              = (known after apply)
      + owner_id                         = (known after apply)
      + tags                             = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                         = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
    }
  # module.vpc3.aws_internet_gateway.this[0] will be created
  + resource "aws_internet_gateway" "this" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id   = (known after apply)
    }
  # module.vpc3.aws_route.public_internet_gateway[0] will be created
  + resource "aws_route" "public_internet_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + gateway_id             = (known after apply)
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)
      + timeouts {
          + create = "5m"
        }
    }
  # module.vpc3.aws_route_table.private[0] will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all         = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id           = (known after apply)
    }
  # module.vpc3.aws_route_table.private[1] will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all         = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id           = (known after apply)
    }
  # module.vpc3.aws_route_table.private[2] will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all         = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id           = (known after apply)
    }
  # module.vpc3.aws_route_table.public[0] will be created
  + resource "aws_route_table" "public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all         = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id           = (known after apply)
    }
  # module.vpc3.aws_route_table_association.private[0] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }
  # module.vpc3.aws_route_table_association.private[1] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }
  # module.vpc3.aws_route_table_association.private[2] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }
  # module.vpc3.aws_route_table_association.public[0] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }
  # module.vpc3.aws_route_table_association.public[1] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }
  # module.vpc3.aws_route_table_association.public[2] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }
  # module.vpc3.aws_subnet.private[0] will be created
  + resource "aws_subnet" "private" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-west-2a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "172.16.101.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                        = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id                          = (known after apply)
    }
  # module.vpc3.aws_subnet.private[1] will be created
  + resource "aws_subnet" "private" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-west-2b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "172.16.102.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                        = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id                          = (known after apply)
    }
  # module.vpc3.aws_subnet.private[2] will be created
  + resource "aws_subnet" "private" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-west-2c"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "172.16.103.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                        = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id                          = (known after apply)
    }
  # module.vpc3.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-west-2a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "172.16.1.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                        = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id                          = (known after apply)
    }
  # module.vpc3.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-west-2b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "172.16.2.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                        = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id                          = (known after apply)
    }
  # module.vpc3.aws_subnet.public[2] will be created
  + resource "aws_subnet" "public" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-west-2c"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "172.16.3.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                        = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + vpc_id                          = (known after apply)
    }
  # module.vpc3.aws_vpc.this[0] will be created
  + resource "aws_vpc" "this" {
      + arn                              = (known after apply)
      + assign_generated_ipv6_cidr_block = false
      + cidr_block                       = "172.16.0.0/16"
      + default_network_acl_id           = (known after apply)
      + default_route_table_id           = (known after apply)
      + default_security_group_id        = (known after apply)
      + dhcp_options_id                  = (known after apply)
      + enable_classiclink               = (known after apply)
      + enable_classiclink_dns_support   = (known after apply)
      + enable_dns_hostnames             = false
      + enable_dns_support               = true
      + id                               = (known after apply)
      + instance_tenancy                 = "default"
      + ipv6_association_id              = (known after apply)
      + ipv6_cidr_block                  = (known after apply)
      + main_route_table_id              = (known after apply)
      + owner_id                         = (known after apply)
      + tags                             = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
      + tags_all                         = {
          + "Created_by"  = "Terraform"
          + "Environment" = "Transit-gateway"
          + "Name"        = "Transit-gateway"
        }
    }
Plan: 84 to add, 0 to change, 0 to destroy.
Changes to Outputs:
  + vpc1_private_subnets = [
      + (known after apply),
    ]
  + vpc1_public_subnets  = [
      + (known after apply),
    ]
  + vpc2_private_subnets = [
      + (known after apply),
    ]
  + vpc2_public_subnets  = [
      + (known after apply),
    ]
  + vpc3_private_subnets = [
      + (known after apply),
    ]
  + vpc3_public_subnets  = [
      + (known after apply),
    ]
bash -c "$(curl https://bucket-to-check-aws-tasks.s3.amazonaws.com/AWS/scripts/shared_scripts/transit_gateway.sh)"
ssh ec2-user@50.17.10.15
ssh-add
eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa
ssh -A -i ~/.ssh/id_rsa ssh ec2-user@50.17.10.15
ssh -A -i ~/.ssh/id_rsa  ec2-user@50.17.10.15
Oregon. 
  Transit Gateway   attachment   VPC
  Transit Gateway   attachment   Peering 
  Transit Gateway   
Ohio. 
  Transit Gateway   attachement   VPC
  Transit Gateway   attachement   Peering 
  Transit Gateway   
Virginia. 
  Transit Gateway   attachement   VPC
  Transit Gateway   attachement   Peering 
  Transit Gateway   
bash -c "$(curl https://bucket-to-check-aws-tasks.s3.amazonaws.com/AWS/scripts/shared_scripts/transit_gateway.sh)"
ls
packer init
git pull
packer init .
pcaker validate ubuntu.pkr.hcl
packer validate ubuntu.pkr.hcl
packer build ubuntu.pkr.hcl
git pull
packer build ubuntu.pkr.hcl
git pul;l
git pull
git pull
git pull
Installation of Packer  
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install packer
Documentation
• https://learn.hashicorp.com/packer
packer version
packer
terraform fmt
terraform init
terraform fmt
terraform fmt

terraform fmt
terraform init
terraform plan
terraform apply -auto-approve
bash -c "$(curl https://bucket-to-check-terraform-tasks.s3.amazonaws.com/Terraform/scripts/shared_scripts/terraform_menu.sh )"
terraform deestroy
terraform destroy
terraform init
terraform destroy
terraform fmt
terraform init
terraform plan
terraform apply
terraform init
terraform plan
terraform apply
bash -c "$(curl https://bucket-to-check-terraform-tasks.s3.amazonaws.com/Terraform/scripts/shared_scripts/terraform_menu.sh)'




bash -c "$(curl https://bucket-to-check-terraform-tasks.s3.amazonaws.com/Terraform/scripts/shared_scripts/terraform_menu.sh)"
terraform init
terraform plan
terraform apply
bash -c "$(curl https://bucket-to-check-terraform-tasks.s3.amazonaws.com/Terraform/scripts/shared_scripts/terraform_menu.sh)"
terraform resfresh
terraform refresh
terraform init
terraform plan
terraform apply
bash -c "$(curl https://bucket-to-check-terraform-tasks.s3.amazonaws.com/Terraform/scripts/shared_scripts/terraform_menu.sh )"
terraform init
terraform plan
terraform pla n
terraform plan
bash -c "$(curl https://bucket-to-check-terraform-tasks.s3.amazonaws.com/Terraform/scripts/shared_scripts/terraform_menu.sh )"
terraform init
terraform plan
terraform apply -auto-approve
terraform plan
terraform apply -auto-approve
bash -c "(https://bucket-to-check-terraform-tasks.s3.amazonaws.com/Terraform/scripts/shared_scripts/terraform_menu.sh)"
bash -c "$(curl https://bucket-to-check-terraform-tasks.s3.amazonaws.com/Terraform/scripts/shared_scripts/terraform_menu.sh)"
terraform apply -auto-approve
terraform init
bash -c "$(curl https://bucket-to-check-terraform-tasks.s3.amazonaws.com/Terraform/scripts/shared_scripts/terraform_menu.sh)"
terraform plan
git clone git@github.com:AsiaO1/interactive-learning-tasks.git
