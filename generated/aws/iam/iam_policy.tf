resource "aws_iam_policy" "tfer--Lambdarole" {
  name = "Lambdarole"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:DeleteItem",
        "dynamodb:GetItem",
        "dynamodb:PutItem",
        "dynamodb:Query",
        "dynamodb:Scan",
        "dynamodb:UpdateItem"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "Stmt1428341300017"
    },
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--lambda-apigateway-policy" {
  name = "lambda-apigateway-policy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:DeleteItem",
        "dynamodb:GetItem",
        "dynamodb:PutItem",
        "dynamodb:Query",
        "dynamodb:Scan",
        "dynamodb:UpdateItem"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "Stmt1428341300017"
    },
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--spotinst-iam-stack-dcyzj-Virtualtechbox-SpotinstManagedPolicy-199T7I6MKCFL7" {
  description = "Spotinst Account Policy"
  name        = "spotinst-iam-stack-dcyzj-Virtualtechbox-SpotinstManagedPolicy-199T7I6MKCFL7"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:RequestSpotInstances",
        "ec2:CancelSpotInstanceRequests",
        "ec2:CreateSpotDatafeedSubscription",
        "ec2:Describe*",
        "ec2:AssociateAddress",
        "ec2:AttachVolume",
        "ec2:ConfirmProductInstance",
        "ec2:CopyImage",
        "ec2:CopySnapshot",
        "ec2:CreateImage",
        "ec2:CreateSnapshot",
        "ec2:CreateTags",
        "ec2:CreateVolume",
        "ec2:DeleteTags",
        "ec2:DisassociateAddress",
        "ec2:ModifyImageAttribute",
        "ec2:ModifyInstanceAttribute",
        "ec2:MonitorInstances",
        "ec2:RebootInstances",
        "ec2:RegisterImage",
        "ec2:RunInstances",
        "ec2:StartInstances",
        "ec2:StopInstances",
        "ec2:TerminateInstances",
        "ec2:UnassignPrivateIpAddresses",
        "ec2:DeregisterImage",
        "ec2:DeleteSnapshot",
        "ec2:DeleteVolume",
        "ec2:ModifyReservedInstances",
        "ec2:CreateReservedInstancesListing",
        "ec2:CancelReservedInstancesListing",
        "ec2:ModifyNetworkInterfaceAttribute",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "GeneralSpotInstancesAccess"
    },
    {
      "Action": [
        "elasticloadbalancing:Describe*",
        "elasticloadbalancing:Deregister*",
        "elasticloadbalancing:Register*",
        "elasticloadbalancing:RemoveTags",
        "elasticloadbalancing:RegisterTargets",
        "elasticloadbalancing:EnableAvailabilityZonesForLoadBalancer",
        "elasticloadbalancing:DisableAvailabilityZonesForLoadBalancer",
        "elasticloadbalancing:DescribeTags",
        "elasticloadbalancing:CreateTargetGroup",
        "elasticloadbalancing:DeleteTargetGroup",
        "elasticloadbalancing:ModifyRule",
        "elasticloadbalancing:AddTags",
        "elasticloadbalancing:ModifyTargetGroupAttributes",
        "elasticloadbalancing:ModifyTargetGroup",
        "elasticloadbalancing:ModifyListener"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "AccessELB"
    },
    {
      "Action": [
        "cloudwatch:DescribeAlarmHistory",
        "cloudwatch:DescribeAlarms",
        "cloudwatch:DescribeAlarmsForMetric",
        "cloudwatch:GetMetricStatistics",
        "cloudwatch:GetMetricData",
        "cloudwatch:ListMetrics",
        "cloudwatch:PutMetricData",
        "cloudwatch:PutMetricAlarm"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "AccessCloudWatch"
    },
    {
      "Action": [
        "sns:Publish",
        "sns:ListTopics",
        "sns:CreateTopic",
        "sns:GetTopicAttributes",
        "sns:ListSubscriptionsByTopic",
        "sns:Subscribe"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "AccessSNS"
    },
    {
      "Action": [
        "iam:AddRoleToInstanceProfile",
        "iam:ListInstanceProfiles",
        "iam:ListInstanceProfilesForRole",
        "iam:PassRole",
        "iam:ListRoles",
        "iam:ListAccountAliases",
        "iam:GetPolicyVersion",
        "iam:ListPolicies",
        "iam:GetPolicy",
        "iam:ListAttachedRolePolicies",
        "organizations:ListAccounts",
        "iam:CreateServiceLinkedRole",
        "iam:PutRolePolicy",
        "iam:GetInstanceProfile",
        "iam:GetRolePolicy",
        "iam:ListRolePolicies",
        "iam:SimulatePrincipalPolicy"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "AccessIAM"
    },
    {
      "Action": [
        "elasticbeanstalk:Describe*",
        "elasticbeanstalk:RequestEnvironmentInfo",
        "elasticbeanstalk:RetrieveEnvironmentInfo",
        "elasticbeanstalk:ValidateConfigurationSettings",
        "elasticbeanstalk:UpdateEnvironment",
        "elasticbeanstalk:ListPlatformVersions",
        "cloudformation:GetTemplate",
        "cloudformation:DescribeStackResources",
        "cloudformation:DescribeStackResource",
        "cloudformation:DescribeStacks",
        "cloudformation:ListStackResources",
        "cloudformation:UpdateStack",
        "cloudformation:DescribeStackEvents",
        "logs:PutRetentionPolicy",
        "logs:createLogGroup",
        "elasticbeanstalk:ListTagsForResource"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "GeneralAccessElaticBeanstalk"
    },
    {
      "Action": [
        "autoscaling:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "AccessAutoScalingGroups"
    },
    {
      "Action": [
        "eks:ListClusters",
        "eks:DescribeNodegroup",
        "eks:ListNodegroups"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "AccessEks"
    },
    {
      "Action": [
        "elasticmapreduce:*",
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "AccessEMR"
    },
    {
      "Action": [
        "ecs:List*",
        "ecs:Describe*",
        "ecs:DeregisterContainerInstance",
        "ecs:UpdateContainerInstancesState",
        "ecs:RegisterTaskDefinition",
        "ecs:CreateService",
        "application-autoscaling:PutScalingPolicy",
        "application-autoscaling:RegisterScalableTarget",
        "application-autoscaling:Describe*",
        "ecs:putAttributes"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "AccessECS"
    },
    {
      "Action": [
        "batch:List*",
        "batch:Describe*"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "AccessBatch"
    },
    {
      "Action": [
        "opsworks:DeregisterInstance",
        "opsworks:DescribeInstances",
        "opsworks:DescribeStacks",
        "opsworks:DescribeLayers"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "AccessOpsWorks"
    },
    {
      "Action": [
        "codedeploy:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "AccessCodeDeploy"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:List*",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "AccessGeneralS3"
    },
    {
      "Action": [
        "route53:ListHostedZones",
        "route53:ListResourceRecordSets",
        "route53:ChangeResourceRecordSets"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "AccessRoute53"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::elasticbeanstalk*"
      ],
      "Sid": "AccesS3forElasticBeanstalk"
    },
    {
      "Action": [
        "ecs:Poll",
        "ecs:DiscoverPollEndpoint",
        "ecs:StartTelemetrySession",
        "ecs:StartTask",
        "ecs:StopTask",
        "ecs:DescribeContainerInstances",
        "ecs:RegisterContainerInstance",
        "ecs:DeregisterContainerInstance",
        "ecs:SubmitContainerStateChange",
        "ecs:SubmitTaskStateChange"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "DockerBasedBeanstalkEnvironments"
    },
    {
      "Action": [
        "elasticfilesystem:DescribeFileSystems"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "ElasticFileSystem"
    },
    {
      "Action": [
        "pricing:GetProducts"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "Pricing"
    },
    {
      "Action": [
        "savingsplans:Describe*",
        "savingsplans:List*"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "SavingsPlan"
    },
    {
      "Action": [
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "Lambda"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
