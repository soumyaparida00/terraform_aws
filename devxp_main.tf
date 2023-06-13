terraform {
  backend "s3" {
      bucket = "terraform-state-gddkc4tx3sykevch99wysrxj0xhireznvt33t9eoplorv"
      key = "terraform/state"
      region = "us-west-2"
  }
}

resource "aws_instance" "Instance-zpsv" {
      ami = data.aws_ami.ubuntu_latest.id
      instance_type = "t2.micro"
      tags = {
        Name = "Instance-zpsv"
      }
      lifecycle {
        ignore_changes = [ami]
      }
}

resource "aws_iam_user" "Instance-zpsv_iam" {
      name = "Instance-zpsv_iam"
}

resource "aws_iam_user_policy_attachment" "Instance-zpsv_iam_policy_attachment0" {
      user = aws_iam_user.Instance-zpsv_iam.name
      policy_arn = aws_iam_policy.Instance-zpsv_iam_policy0.arn
}

resource "aws_iam_policy" "Instance-zpsv_iam_policy0" {
      name = "Instance-zpsv_iam_policy0"
      path = "/"
      policy = data.aws_iam_policy_document.Instance-zpsv_iam_policy_document.json
}

resource "aws_iam_access_key" "Instance-zpsv_iam_access_key" {
      user = aws_iam_user.Instance-zpsv_iam.name
}

resource "aws_s3_bucket" "bucket-ybav-qucp-xpwj-lrug-fitl" {
      bucket = "bucket-ybav-qucp-xpwj-lrug-fitl"
}

resource "aws_s3_bucket_public_access_block" "bucket-ybav-qucp-xpwj-lrug-fitl_access" {
      bucket = aws_s3_bucket.bucket-ybav-qucp-xpwj-lrug-fitl.id
      block_public_acls = true
      block_public_policy = true
}

data "aws_iam_policy_document" "Instance-zpsv_iam_policy_document" {
      statement {
        actions = ["ec2:RunInstances", "ec2:AssociateIamInstanceProfile", "ec2:ReplaceIamInstanceProfileAssociation"]
        effect = "Allow"
        resources = ["arn:aws:ec2:::*"]
      }
      statement {
        actions = ["iam:PassRole"]
        effect = "Allow"
        resources = [aws_instance.Instance-zpsv.arn]
      }
}

data "aws_ami" "ubuntu_latest" {
      most_recent = true
      owners = ["099720109477"]
      filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64*"]
      }
      filter {
        name = "virtualization-type"
        values = ["hvm"]
      }
}



