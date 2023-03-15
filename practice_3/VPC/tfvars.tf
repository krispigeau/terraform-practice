variable "cidr-block" {
  type    = string
  default = "100.64.0.0/16"
}
variable "tf-name" {
  type    = string
  default = "vpc-tf"
}
variable "public-cidr" {
  type    = string
  default = "100.64.1.0/24"
}
variable "private-cidr" {
  type    = string
  default = "100.64.2.0/24"
}
variable "azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}