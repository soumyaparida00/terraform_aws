resource "aws_instance" "instance_name" {
    # Replace with ami-id with the ami id needs to be used
    ami = "ami-id"
    instance_type = "t2.micro"
    # VPC
    subnet_id = "${aws_subnet.your_subnet_name_public-1a.id}"
    # Security Group
    vpc_security_group_ids = [
        "${aws_security_group.openvpn.id}",
        "${aws_security_group.ssh-allowed.id}"
        ]
    # the Public SSH key
    key_name = "id_rsa"
    connection {
        type        = "ssh"
        host        = self.public_ip
        user        = "ubuntu"
        private_key = file("Path of local key file which needs to pushed to instance")
        timeout     = "4m"
    }
    tags = {
        Name = "instance_name"
        Env = "your_env_name"
        Project = "your_project_name"
    }
}
// Sends your public key to the instance
resource "aws_key_pair" "id_rsa" {
    key_name = "id_rsa"
    public_key = file("Path of local key file which needs to be pushed to instance")

    tags = {
        Name = "instance_name"
        Env = "your_env_name"
        Project = "your_project_name"
    }
}
resource "aws_instance" "jenkins_instance_name" {
    # Replace with ami-id with the ami id needs to be used
    ami = "ami-id"
    instance_type = "t2.micro"
    # VPC
    subnet_id = "${aws_subnet.your_subnet_name_private-1a.id}"
    # Security Group
    vpc_security_group_ids = "${aws_security_group.ssh-allowed.id}"
    # the Public SSH key
    key_name = "id_rsa"
    connection {
        type        = "ssh"
        host        = self.public_ip
        user        = "ubuntu"
        private_key = file("Path of local key file which needs to pushed to instance")
        timeout     = "4m"
    }
    tags = {
        Name = "jenkins_instance_name"
        Env = "your_env_name"
        Project = "your_project_name"
    }
}
// Sends your public key to the instance
resource "aws_key_pair" "id_rsa" {
    key_name = "id_rsa"
    public_key = file("Path of local key file which needs to be pushed to instance")

    tags = {
        Name = "jenkins_instance_name"
        Env = "your_env_name"
        Project = "your_project_name"
    }
}
