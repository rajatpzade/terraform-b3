provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA2NRR6VMTI67EBENT"
  secret_key = "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"
}

resource "aws_iam_user" "myuser" {
  name = "dhoni"
}