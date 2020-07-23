# setup-aws-infra-by-terraform
 In this repository I have created a Terraform code for setting up AWS VPC and EC2 Instance with public IP.

 Also I have created a boostrap file (init file) for EC2 to setup Java JDk1.8 and Jenkins.

 Security group is setup for port to open 22 (SSH) and 8080 (Jenkins).
 
 The EC2 instance is t2.micro as it is free and it is launched in us-east-1 region.

 VPC is setup with two subnets and Internet gateway.

 I am launching an ubuntu 20.04 instance from community AMIs.

 You can get list of available amis from below link:
 
 ```sh
 wget -qO- https://cloud-images.ubuntu.com/query/focal/server/released.current.txt | grep -E "amd64" | grep "ebs-ssd" | grep "hvm" | awk '{ print $7 " = " "\"" $8 "\"" }'
 ```


Terrafrom:

Terraform Version: v0.12.18 

Terraform tfstate file is stored on my S3 which is mentioned in backend file.
