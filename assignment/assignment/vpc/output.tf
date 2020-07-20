
output "vpc_id" {
  value = "${aws_vpc.aws_vpc.id}"
}


output "cidr_block" {
  value = "${aws_vpc.aws_vpc.cidr_block}"
}


output "bastian_subnet" {
  value = "${aws_subnet.bastian.id}"
}


output "frontend_subnet" {
  value = "${aws_subnet.frontend.id}"
}


output "backend_subnet" {
  value = "${aws_subnet.backend.id}"
}


output "bastian_sg" {
  value = "${aws_security_group.bastian.id}"
}


output "frontend_sg" {
  value = "${aws_security_group.frontend.id}"
}


output "backend_sg" {
  value = "${aws_security_group.backend.id}"
}
