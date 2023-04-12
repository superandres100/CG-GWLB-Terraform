output "Deployment" {
  value = "Finalizing instances configuration may take up to 20 minutes after deployment is finished."
}

output "gwlb_arn" {
  depends_on = [module.gwlb]
  value = module.gwlb[*].gwlb_arn
}
output "gwlb_service_name" {
  depends_on = [module.gwlb]
  value = module.gwlb[*].gwlb_service_name
}
output "gwlb_name" {
  value = var.gateway_load_balancer_name
}
output "controller_name" {
  value = "gwlb-controller"
}
output "template_name" {
  value = var.configuration_template
}
output "tgw_attachment" {
  value = aws_ec2_transit_gateway_vpc_attachment.my_attachment.id
}

output "public_natgw_rtb1" {
  value = aws_route_table.gwlbe_subnet1_rtb.id
}

output "public_natgw_rtb2" {
  value = aws_route_table.gwlbe_subnet2_rtb.id
}

output "public_natgw_rtb3" {
  value = [for public_natgw_rtb3_item in aws_route_table.gwlbe_subnet3_rtb : public_natgw_rtb3_item.id ]
}

output "public_natgw_rtb4" {
  value = [for public_natgw_rtb4_item in aws_route_table.gwlbe_subnet4_rtb : public_natgw_rtb4_item.id ]
}