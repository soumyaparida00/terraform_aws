resource "aws_iam_user_group_membership" "tfer--training-002F-Adminstrators" {
  groups = ["Adminstrators"]
  user   = "training"
}
