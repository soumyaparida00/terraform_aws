variable "AWS_REGION" {    
    default = "ap-south-1"
}
variable "clustername"{
    default = "test-eks"
    description = "Test  EKS Cluster"
}
variable "spot_instance_types"{
    default = ["t3a.small","t3a.medium"]
    description = "List of instance types for SPOT instance selection"
}
variable "spot_max_size"{
    default = 2
    description = "How many SPOT instance can be created max"
}
variable "spot_desired_size"{
    default = 4
    description = "How many SPOT instance should be running at all times"
}
