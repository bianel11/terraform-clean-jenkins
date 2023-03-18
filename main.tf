variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

provider "aws" {
  region     = "us-east-1"
  access_key = file("/home/access_key.txt")
  secret_key = file("/home/secret_key.txt")
}

resource "aws_instance" "example" {
  ami             = "ami-005f9685cb30f234b"
  instance_type   = "t2.micro"
  security_groups = ["default"]
  key_name        = "terra-example"
  tags = {
    Name = "terraform-clean-jenkins"
  }

}
