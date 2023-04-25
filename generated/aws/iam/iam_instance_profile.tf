resource "aws_iam_instance_profile" "tfer--node-instance-role" {
  name = "node-instance-role"
  path = "/"
  role = "node-instance-role"
}
