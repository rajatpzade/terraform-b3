provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA2NRR6VMTI67EBENT"
  secret_key = "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"
}

/* resource "aws_iam_user" "myuser" {
  name = "dhoni"
} */

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}