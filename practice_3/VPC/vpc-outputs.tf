output "vpc-id" {
    value = aws_vpc.vpc-tf.id
}
output "aws_subnet-public-SN" {
    value = aws_subnet.public-SN.id
}