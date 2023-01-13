resource "aws_iam_policy_attachment" "AWSLambdaBasicExecutionRole-ed0e7fd7-f4ad-49cf-b15a-8b1c1219e542-policy-attachment" {
    name       = "AWSLambdaBasicExecutionRole-ed0e7fd7-f4ad-49cf-b15a-8b1c1219e542-policy-attachment"
    policy_arn = "arn:aws:iam::364650154543:policy/service-role/AWSLambdaBasicExecutionRole-ed0e7fd7-f4ad-49cf-b15a-8b1c1219e542"
    groups     = []
    users      = []
    roles      = ["catch-put-event-function-role-wwplmz5k"]
}

resource "aws_iam_policy_attachment" "AWSLambdaBasicExecutionRole-ff871910-1cbc-4ba3-b01f-4051cf6c5c97-policy-attachment" {
    name       = "AWSLambdaBasicExecutionRole-ff871910-1cbc-4ba3-b01f-4051cf6c5c97-policy-attachment"
    policy_arn = "arn:aws:iam::364650154543:policy/service-role/AWSLambdaBasicExecutionRole-ff871910-1cbc-4ba3-b01f-4051cf6c5c97"
    groups     = []
    users      = []
    roles      = ["anguk-test-lambda-role-k5yczcgs"]
}

resource "aws_iam_policy_attachment" "OpsItem-CWE-RolePolicy-policy-attachment" {
    name       = "OpsItem-CWE-RolePolicy-policy-attachment"
    policy_arn = "arn:aws:iam::364650154543:policy/service-role/OpsItem-CWE-RolePolicy"
    groups     = []
    users      = []
    roles      = ["OpsItem-CWE-Role"]
}

resource "aws_iam_policy_attachment" "rds-proxy-policy-1658308373786-policy-attachment" {
    name       = "rds-proxy-policy-1658308373786-policy-attachment"
    policy_arn = "arn:aws:iam::364650154543:policy/service-role/rds-proxy-policy-1658308373786"
    groups     = []
    users      = []
    roles      = ["rds-proxy-role-1658308373786"]
}

resource "aws_iam_policy_attachment" "rds-proxy-policy-1660269338246-policy-attachment" {
    name       = "rds-proxy-policy-1660269338246-policy-attachment"
    policy_arn = "arn:aws:iam::364650154543:policy/service-role/rds-proxy-policy-1660269338246"
    groups     = []
    users      = []
    roles      = ["rds-proxy-role-1660269338246"]
}

resource "aws_iam_policy_attachment" "SupportUser-policy-attachment" {
    name       = "SupportUser-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/job-function/SupportUser"
    groups     = []
    users      = []
    roles      = ["bespin-support-role"]
}

resource "aws_iam_policy_attachment" "AmazonSQSFullAccess-policy-attachment" {
    name       = "AmazonSQSFullAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
    groups     = []
    users      = []
    roles      = ["SQS-VPCE-Tutorial-EC2InstanceRole-ap-northeast-2"]
}

resource "aws_iam_policy_attachment" "AmazonEKSClusterPolicy-policy-attachment" {
    name       = "AmazonEKSClusterPolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
    groups     = []
    users      = []
    roles      = ["eksClusterRole", "eksctl-pjtc-eks-dev-cluster-1-cluster-ServiceRole-QKB69KBPLE35"]
}

resource "aws_iam_policy_attachment" "AmazonEKSWorkerNodePolicy-policy-attachment" {
    name       = "AmazonEKSWorkerNodePolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
    groups     = []
    users      = []
    roles      = ["AmazonEKSNodeRole"]
}

resource "aws_iam_policy_attachment" "AutoScalingServiceRolePolicy-policy-attachment" {
    name       = "AutoScalingServiceRolePolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForAutoScaling"]
}

resource "aws_iam_policy_attachment" "AmazonS3FullAccess-policy-attachment" {
    name       = "AmazonS3FullAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
    groups     = []
    users      = ["pjtc-dev-s3"]
    roles      = []
}

resource "aws_iam_policy_attachment" "AmazonEC2ContainerRegistryReadOnly-policy-attachment" {
    name       = "AmazonEC2ContainerRegistryReadOnly-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
    groups     = []
    users      = []
    roles      = ["AmazonEKSNodeRole"]
}

resource "aws_iam_policy_attachment" "AWSXrayReadOnlyAccess-policy-attachment" {
    name       = "AWSXrayReadOnlyAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AWSXrayReadOnlyAccess"
    groups     = []
    users      = []
    roles      = ["CloudWatch-CrossAccountSharingRole"]
}

resource "aws_iam_policy_attachment" "AWSSSOServiceRolePolicy-policy-attachment" {
    name       = "AWSSSOServiceRolePolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForSSO"]
}

resource "aws_iam_policy_attachment" "ReadOnlyAccess-policy-attachment" {
    name       = "ReadOnlyAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
    groups     = []
    users      = []
    roles      = ["bespin-support-role", "cdk-hnb659fds-lookup-role-364650154543-ap-northeast-2", "AWSReservedSSO_bespin-support-role_847709e58bcea5dd"]
}

resource "aws_iam_policy_attachment" "AWSElasticLoadBalancingServiceRolePolicy-policy-attachment" {
    name       = "AWSElasticLoadBalancingServiceRolePolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForElasticLoadBalancing"]
}

resource "aws_iam_policy_attachment" "ElastiCacheServiceRolePolicy-policy-attachment" {
    name       = "ElastiCacheServiceRolePolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/ElastiCacheServiceRolePolicy"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForElastiCache"]
}

resource "aws_iam_policy_attachment" "AmazonRDSServiceRolePolicy-policy-attachment" {
    name       = "AmazonRDSServiceRolePolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForRDS"]
}

resource "aws_iam_policy_attachment" "AWSOrganizationsServiceTrustPolicy-policy-attachment" {
    name       = "AWSOrganizationsServiceTrustPolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForOrganizations"]
}

resource "aws_iam_policy_attachment" "AmazonECSServiceRolePolicy-policy-attachment" {
    name       = "AmazonECSServiceRolePolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForECS"]
}

resource "aws_iam_policy_attachment" "AdministratorAccess-policy-attachment" {
    name       = "AdministratorAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
    groups     = ["Admin-Group"]
    users      = ["Administrator"]
    roles      = ["cdk-hnb659fds-cfn-exec-role-364650154543-ap-northeast-2", "AWS-QuickSetup-StackSet-Local-ExecutionRole"]
}

resource "aws_iam_policy_attachment" "AmazonSSMServiceRolePolicy-policy-attachment" {
    name       = "AmazonSSMServiceRolePolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonSSMServiceRolePolicy"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForAmazonSSM"]
}

resource "aws_iam_policy_attachment" "IAMUserChangePassword-policy-attachment" {
    name       = "IAMUserChangePassword-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
    groups     = []
    users      = ["hyjung0801", "ohbaek"]
    roles      = []
}

resource "aws_iam_policy_attachment" "AWSSupportServiceRolePolicy-policy-attachment" {
    name       = "AWSSupportServiceRolePolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForSupport"]
}

resource "aws_iam_policy_attachment" "AWSCloud9ServiceRolePolicy-policy-attachment" {
    name       = "AWSCloud9ServiceRolePolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSCloud9ServiceRolePolicy"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForAWSCloud9"]
}

resource "aws_iam_policy_attachment" "AWSTrustedAdvisorServiceRolePolicy-policy-attachment" {
    name       = "AWSTrustedAdvisorServiceRolePolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForTrustedAdvisor"]
}

resource "aws_iam_policy_attachment" "CloudWatchReadOnlyAccess-policy-attachment" {
    name       = "CloudWatchReadOnlyAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/CloudWatchReadOnlyAccess"
    groups     = []
    users      = []
    roles      = ["CloudWatch-CrossAccountSharingRole"]
}

resource "aws_iam_policy_attachment" "AWSLambdaBasicExecutionRole-policy-attachment" {
    name       = "AWSLambdaBasicExecutionRole-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
    groups     = []
    users      = []
    roles      = ["MythicalMysfits-Website-CustomCDKBucketDeployment8-ZKIAWX4UKB18"]
}

resource "aws_iam_policy_attachment" "AWSApplicationAutoscalingDynamoDBTablePolicy-policy-attachment" {
    name       = "AWSApplicationAutoscalingDynamoDBTablePolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingDynamoDBTablePolicy"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForApplicationAutoScaling_DynamoDBTable"]
}

resource "aws_iam_policy_attachment" "APIGatewayServiceRolePolicy-policy-attachment" {
    name       = "APIGatewayServiceRolePolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForAPIGateway"]
}

resource "aws_iam_policy_attachment" "AWSSupportAccess-policy-attachment" {
    name       = "AWSSupportAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AWSSupportAccess"
    groups     = []
    users      = []
    roles      = ["AWSReservedSSO_bespin-support-role_847709e58bcea5dd"]
}

resource "aws_iam_policy_attachment" "AmazonRDSEnhancedMonitoringRole-policy-attachment" {
    name       = "AmazonRDSEnhancedMonitoringRole-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"
    groups     = []
    users      = []
    roles      = ["rds-monitoring-role"]
}

resource "aws_iam_policy_attachment" "AmazonEKS_CNI_Policy-policy-attachment" {
    name       = "AmazonEKS_CNI_Policy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
    groups     = []
    users      = []
    roles      = ["AmazonEKSNodeRole"]
}

resource "aws_iam_policy_attachment" "EC2InstanceProfileForImageBuilderECRContainerBuilds-policy-attachment" {
    name       = "EC2InstanceProfileForImageBuilderECRContainerBuilds-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/EC2InstanceProfileForImageBuilderECRContainerBuilds"
    groups     = []
    users      = ["dev-pub1"]
    roles      = []
}

resource "aws_iam_policy_attachment" "AWSGlobalAcceleratorSLRPolicy-policy-attachment" {
    name       = "AWSGlobalAcceleratorSLRPolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSGlobalAcceleratorSLRPolicy"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForGlobalAccelerator"]
}

resource "aws_iam_policy_attachment" "AWSSystemsManagerOpsDataSyncServiceRolePolicy-policy-attachment" {
    name       = "AWSSystemsManagerOpsDataSyncServiceRolePolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSystemsManagerOpsDataSyncServiceRolePolicy"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForSystemsManagerOpsDataSync"]
}

resource "aws_iam_policy_attachment" "CloudWatchAutomaticDashboardsAccess-policy-attachment" {
    name       = "CloudWatchAutomaticDashboardsAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/CloudWatchAutomaticDashboardsAccess"
    groups     = []
    users      = []
    roles      = ["CloudWatch-CrossAccountSharingRole"]
}

resource "aws_iam_policy_attachment" "AWSServiceRoleForAmazonEKSNodegroup-policy-attachment" {
    name       = "AWSServiceRoleForAmazonEKSNodegroup-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSServiceRoleForAmazonEKSNodegroup"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForAmazonEKSNodegroup"]
}

resource "aws_iam_policy_attachment" "AmazonEKSServiceRolePolicy-policy-attachment" {
    name       = "AmazonEKSServiceRolePolicy-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonEKSServiceRolePolicy"
    groups     = []
    users      = []
    roles      = ["AWSServiceRoleForAmazonEKS"]
}

resource "aws_iam_policy_attachment" "AmazonEKSVPCResourceController-policy-attachment" {
    name       = "AmazonEKSVPCResourceController-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
    groups     = []
    users      = []
    roles      = ["eksctl-pjtc-eks-dev-cluster-1-cluster-ServiceRole-QKB69KBPLE35"]
}

