Lab 12: Launching an EC2 Instance
• Objective: Create a VPC with public and private subnets and 1 EC2 in each subnet,
configure private EC2 security group to only allow inbound SSH from public EC2 IP,
SSH to the private instance using the public bastion host.


Solution:

1. Create VPC + subnets + routing table + internet gateway

![image](https://github.com/user-attachments/assets/31cd3977-2e8c-40db-8bcc-8bf785385036)

2. Create 2 ec2 instances
attach each insance with the same vpc and the subnet depends on if its private or public
![instances](https://github.com/user-attachments/assets/95c59143-a414-4de1-aa75-a97649c5cbb1)

3. Security groups

The first security group for the public instance should be configured with:
Inbound Rules: SSH Source: My IP
Outbound Rule: Allow all (0.0.0.0/0)

The second security group for the private instance should be configured with:
Inbound Rules: SSH Source: the first security group
Outbound Rule: Allow all (0.0.0.0/0)
![sgs](https://github.com/user-attachments/assets/b3d0616a-235a-4a2c-a0ff-35f523548fc1)

4. ssh the private instance using the public one

make sure both instances use the same key pair
![copy_key](https://github.com/user-attachments/assets/1dc596b4-db53-476e-b69a-b83512a5b6cf)

![ssh_pub](https://github.com/user-attachments/assets/36bb34d8-b4c3-448e-82bb-1e76d65370c7)
![ssh_private](https://github.com/user-attachments/assets/5b71988a-8b62-4a16-8543-94441cfaba05)
