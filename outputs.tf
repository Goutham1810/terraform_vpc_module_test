# output "az_infomation" {
  
#   value = module.vpc.azs #module.<module_name>.<output>
# }

output "vpc_id" {
  
  value = module.vpc.vpc_id
}