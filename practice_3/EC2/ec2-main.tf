data "aws_ami" "amazon_linux" {
	most_recent = true
	owners = ["amazon"]
	filter {
		name = "name"
		values = ["amzn2-ami-hvm-*-x86_64-gp2"]
	}
}

resource "aws_instance" "ec2-public" {
	ami = data.aws_ami.amazon_linux.id
	instance_type = var.chassis
	key_name = "######"
	subnet_id = var.aws_subnet-public-SN
	security_groups = [var.SG-TF]
	tags = { Name = "EC2-TF-Public" }
	user_data = file("user-data.sh")
}
