module "networking" {
  source = "./modules/networking"
}
module "compute" {
  source    = "./modules/compute"
  vpc_id    = module.networking.vpc_id
  subnet_id = module.networking.public_subnet_id
}