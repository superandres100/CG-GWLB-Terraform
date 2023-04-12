//PLEASE refer to README.md for accepted values FOR THE VARIABLES BELOW


//AWS Authentication
  region = "us-east-1"
  access_key = "xxxx"
  secret_key = "xxxx"

// --- VPC Network Configuration ---
tgw_id = "tgw-04d261b0036bc39ef"
vpc_cidr = "10.0.0.0/24"
spoke_cidr_block = "10.0.0.0/8"
public_subnets_map = {
  "us-east-1a" = 1
  "us-east-1b" = 2
  "us-east-1c" = 3
}
tgw_subnets_map = {
  "us-east-1a" = 5
  "us-east-1b" = 6
  "us-east-1c" = 7
}
subnets_bit_length = 4

availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
number_of_AZs = 3

nat_gw_subnet_1_cidr ="10.0.0.128/28"
nat_gw_subnet_2_cidr = "10.0.0.144/28"
nat_gw_subnet_3_cidr = "10.0.0.160/28"
nat_gw_subnet_4_cidr = "10.0.0.176/28"

gwlbe_subnet_1_cidr = "10.0.0.192/28"
gwlbe_subnet_2_cidr = "10.0.0.208/28"
gwlbe_subnet_3_cidr = "10.0.0.224/28"
gwlbe_subnet_4_cidr = "10.0.0.240/28"

// --- General Settings ---
key_name = "sms-cp"
enable_volume_encryption = true
volume_size = 100
enable_instance_connect = false
disable_instance_termination = false
allow_upload_download = true
management_server = "CloudGuard-Mgmt"
configuration_template = "GWLB-PROD"
admin_shell = "/bin/bash"

// --- Gateway Load Balancer Configuration ---
gateway_load_balancer_name = "gwlb-cg-prod"
target_group_name = "tg-cg-prod"
enable_cross_zone_load_balancing = "true"

// --- Check Point CloudGuard IaaS Security Gateways Auto Scaling Group Configuration ---
gateway_name = "cg"
gateway_instance_type = "c5.large"
minimum_group_size = 3
maximum_group_size = 6
gateway_version = "R80.40-BYOL"
gateway_password_hash = ""
gateway_SICKey = "QAZplm123456789"
gateways_provision_address_type = "private"
allocate_public_IP = false
enable_cloudwatch = false

// --- Check Point CloudGuard IaaS Security Management Server Configuration ---
management_deploy = false
management_instance_type = "m5.xlarge"
management_version = "R81.10-BYOL"
management_password_hash = "12345678"
gateways_policy = "Standard"
gateway_management = "Locally managed"
admin_cidr = "0.0.0.0/0"
gateways_addresses = "0.0.0.0/0"

// --- Other parameters ---
volume_type = "gp3"

