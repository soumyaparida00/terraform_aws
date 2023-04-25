resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAPIGateway_APIGatewayServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"
  role       = "AWSServiceRoleForAPIGateway"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonEKSNodegroup_AWSServiceRoleForAmazonEKSNodegroup" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSServiceRoleForAmazonEKSNodegroup"
  role       = "AWSServiceRoleForAmazonEKSNodegroup"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonEKS_AmazonEKSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonEKSServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonEKS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForApplicationAutoScaling_DynamoDBTable_AWSApplicationAutoscalingDynamoDBTablePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingDynamoDBTablePolicy"
  role       = "AWSServiceRoleForApplicationAutoScaling_DynamoDBTable"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAutoScaling_AutoScalingServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"
  role       = "AWSServiceRoleForAutoScaling"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForEC2Spot_AWSEC2SpotServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSEC2SpotServiceRolePolicy"
  role       = "AWSServiceRoleForEC2Spot"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForElasticLoadBalancing_AWSElasticLoadBalancingServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"
  role       = "AWSServiceRoleForElasticLoadBalancing"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonEKS_EBS_CSI_DriverRole_AmazonEBSCSIDriverPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
  role       = "AmazonEKS_EBS_CSI_DriverRole"
}

resource "aws_iam_role_policy_attachment" "tfer--lambda-apigateway-role_lambda-apigateway-policy" {
  policy_arn = "arn:aws:iam::749987365125:policy/lambda-apigateway-policy"
  role       = "lambda-apigateway-role"
}

resource "aws_iam_role_policy_attachment" "tfer--node-instance-role_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "node-instance-role"
}

resource "aws_iam_role_policy_attachment" "tfer--node-instance-role_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = "node-instance-role"
}

resource "aws_iam_role_policy_attachment" "tfer--node-instance-role_AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = "node-instance-role"
}

resource "aws_iam_role_policy_attachment" "tfer--node-instance-role_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = "node-instance-role"
}

resource "aws_iam_role_policy_attachment" "tfer--spotinst-iam-stack-dcyzj-Virtualtechb-SpotinstRole-P9K2343CSTPX_SecurityAudit" {
  policy_arn = "arn:aws:iam::aws:policy/SecurityAudit"
  role       = "spotinst-iam-stack-dcyzj-Virtualtechb-SpotinstRole-P9K2343CSTPX"
}

resource "aws_iam_role_policy_attachment" "tfer--spotinst-iam-stack-dcyzj-Virtualtechb-SpotinstRole-P9K2343CSTPX_spotinst-iam-stack-dcyzj-Virtualtechbox-SpotinstManagedPolicy-199T7I6MKCFL7" {
  policy_arn = "arn:aws:iam::749987365125:policy/spotinst-iam-stack-dcyzj-Virtualtechbox-SpotinstManagedPolicy-199T7I6MKCFL7"
  role       = "spotinst-iam-stack-dcyzj-Virtualtechb-SpotinstRole-P9K2343CSTPX"
}

resource "aws_iam_role_policy_attachment" "tfer--vtb-eks_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "vtb-eks"
}

resource "aws_iam_role_policy_attachment" "tfer--vtb-eks_AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = "vtb-eks"
}

resource "aws_iam_role_policy_attachment" "tfer--vtb-eks_AmazonEKSVPCResourceController" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
  role       = "vtb-eks"
}
