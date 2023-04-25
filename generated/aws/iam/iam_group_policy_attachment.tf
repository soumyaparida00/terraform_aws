resource "aws_iam_group_policy_attachment" "tfer--Adminstrators_AdministratorAccess" {
  group      = "Adminstrators"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
