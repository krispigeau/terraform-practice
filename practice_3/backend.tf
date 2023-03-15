terraform {
  backend "s3" {
    bucket = "ict-kp-bucket"
    key    = "k1/ict-kp-bucket"
    region = "us-east-1"
  }
}