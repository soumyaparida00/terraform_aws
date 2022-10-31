resource "aws_vpc" "your_vpc_name" {
  cidr_block = "10.6.0.0/16"
  enable_dns_support = "true"
  enable_dns_hostnames = "true"
  instance_tenancy = "default"

  tags = {
    Name = "your_vpc_name"
    Env = "your_env_name"
    Project = "your_project_name"
  }

}
resource "aws_subnet" "your_subnet_name_public-1b" {
    vpc_id = "${aws_vpc.your_vpc_name.id}"
    cidr_block = "10.6.1.0/24"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "ap-south-1a"
    tags = {
        Name = "your_subnet_name_public-1b"
        Env = "your_env_name"
        Project = "your_project_name"
    }
}
resource "aws_subnet" "your_subnet_name_public-1b" {
    vpc_id = "${aws_vpc.your_vpc_name.id}"
    cidr_block = "10.6.2.0/24"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "ap-south-1b"
    tags = {
        Name = "your_subnet_name_public-1b"
        Env = "your_env_name"
        Project = "your_project_name" 
    }
}
resource "aws_subnet" "your_subnet_name_public-1c" {
    vpc_id = "${aws_vpc.your_vpc_name.id}"
    cidr_block = "10.6.3.0/24"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "ap-south-1c"
    tags = {
        Name = "your_subnet_name_public-1c"
        Env = "your_env_name"
        Project = "your_project_name"
    }
}
resource "aws_subnet" "your_subnet_name_private-1a" {
    vpc_id = "${aws_vpc.your_vpc_name.id}"
    cidr_block = "10.6.4.0/24"
    map_public_ip_on_launch = "false" //it makes this a public subnet
    availability_zone = "ap-south-1a"
    tags = {
        Name = "your_subnet_name_private-1a"
        Env = "your_env_name"
        Project = "your_project_name"
        
    }
}
resource "aws_subnet" "your_subnet_name_private-1b" {
    vpc_id = "${aws_vpc.your_vpc_name.id}"
    cidr_block = "10.6.5.0/24"
    map_public_ip_on_launch = "false" //it makes this a public subnet
    availability_zone = "ap-south-1b"
    tags = {
        Name = "your_subnet_name_private-1b"
        Env = "your_env_name"
        Project = "your_project_name"
    }
}
resource "aws_subnet" "your_subnet_name_private-1c" {
    vpc_id = "${aws_vpc.your_vpc_name.id}"
    cidr_block = "10.6.6.0/24"
    map_public_ip_on_launch = "false" //it makes this a public subnet
    availability_zone = "ap-south-1c"
    tags = {
        Name = "your_subnet_name_private-1c"
        Env = "your_env_name"
        Project = "your_project_name"
    }
}
resource "aws_internet_gateway" "uat-igw" {
    vpc_id = "${aws_vpc.your_vpc_name.id}"
    tags = {
        Name = "uat-igw"
        Env = "your_env_name"
        Project = "your_project_name"
    }
}
resource "aws_route_table" "uat-public-crt" {
    vpc_id = "${aws_vpc.your_vpc_name.id}"
    
    route {
        //associated subnet can reach everywhere
        cidr_block = "0.0.0.0/0" 
        //CRT uses this IGW to reach internet
        gateway_id = "${aws_internet_gateway.uat-igw.id}" 
    }
    
    tags = {
        Name = "uat-public-crt"
        Env = "your_env_name"
        Project = "your_project_name" 
    }
}
resource "aws_route_table_association" "uat-crta-public-subnet-1a"{
    subnet_id = "${aws_subnet.uat-subnet-public-1a.id}"
    route_table_id = "${aws_route_table.uat-public-crt.id}"
}
resource "aws_route_table_association" "uat-crta-public-subnet-1b"{
    subnet_id = "${aws_subnet.uat-subnet-public-1b.id}"
    route_table_id = "${aws_route_table.uat-public-crt.id}"
}
resource "aws_route_table_association" "uat-crta-public-subnet-1c"{
    subnet_id = "${aws_subnet.uat-subnet-public-1c.id}"
    route_table_id = "${aws_route_table.uat-public-crt.id}"
}
resource "aws_security_group" "ssh-allowed" {
    vpc_id = "${aws_vpc.your_vpc_name.id}"
    
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        // This means, all ip address are allowed to ssh ! 
        // Do not do it in the production. 
        // Put your office or home address in it!
        cidr_blocks = ["10.6.0.0/16"]
    }
    tags = {
        Name = "ssh-allowed"
        Env = "your_env_name"
        Project = "your_project_name"
    }

}
resource "aws_security_group" "openvpn" {
    vpc_id = "${aws_vpc.your_vpc_name.id}"
    
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
    //If you do not add this rule, you can not reach the NGINX  
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 943
        to_port = 943
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "openvpn"
        Env = "your_env_name"
        Project = "your_project_name"
    }
}
