module "vpc" {
  source            = "./modules/vpc"
  availability_zone = var.availability_zone
}

module "sg" {
  source = "./modules/sg"
}

module "cvm" {
  source                  = "./modules/cvm"
  vpc_id                  = module.vpc.vpc_id
  subnet_id               = module.vpc.subnet_id
  orderly_security_groups = [module.sg.sg_id]
}
