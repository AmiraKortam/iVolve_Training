Lab 16: Multi-Tier Application Deployment with Terraform
• Create a VPC manually.
• Make Ternaform manage this VPC.
• Implement the below diagram with Terraform.
• Use local provisioner to write the EC2 IP in a file called ec2-ip.txt.
![image](https://github.com/user-attachments/assets/66946b33-6bdb-47f5-8c8f-48e5d1a4af6e)



Solution:
1. Create vpc manually

![myvpc](https://github.com/user-attachments/assets/be84c53b-8183-47aa-b62a-c5e8b5241522)

2. download terraform

![downloadTerraform](https://github.com/user-attachments/assets/bf88807e-37c6-4b02-bfd2-976fb0e64426)

3. import vpc

![importvpc](https://github.com/user-attachments/assets/6af2b3cb-6bd7-405d-b7b5-ba6c3ea1f8e1)

4. Run "Terraform apply" and make sure resourses successfully created 
Note: i run it step by step
apply:
![apply1](https://github.com/user-attachments/assets/609cd95d-2c7e-477e-9980-98bda9ba2e86)
resoureses:
![subnets](https://github.com/user-attachments/assets/3b0bb35a-60e0-4de1-a05e-7323a0360e72)

apply:
![apply2](https://github.com/user-attachments/assets/f3dd9c83-a7ed-4fad-98d3-9da59a7dd6b6)
resoureses:
![igw](https://github.com/user-attachments/assets/73edd386-f6b5-4b1b-bf18-5cfd3cda73d6)
![routetable](https://github.com/user-attachments/assets/d323ed45-30da-4dc1-826a-24315c1f8a87)

apply:
![apply3](https://github.com/user-attachments/assets/1c650f9b-0487-4ac1-acb2-cc0b51442fbe)
resoureses:
![ec2](https://github.com/user-attachments/assets/17b10114-6464-43b5-b986-c1b14ee757e0)

apply:
![apply4](https://github.com/user-attachments/assets/ad5d02d8-f207-4041-ab76-eacd777a4e84)
resoureses:
![rds](https://github.com/user-attachments/assets/65076073-84b7-414b-b7bc-8afadd50cb0c)














