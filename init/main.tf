
# vpcモジュールを呼び出す
module "network" {
  source          = "../modules/network"
  system          = local.system
  env             = local.env
  cidr_vpc        = local.vpc_cidr
  cidr_public_1a  = local.cidr_pub_1a
  cidr_public_1c  = local.cidr_pub_1c
  cidr_private_1a = local.cidr_pri_1a
  cidr_private_1c = local.cidr_pri_1c
}

module "ecr" {
  source = "../modules/ecr"
}
