Lab 19: Terraform Modules
• Create VPC manually in your AWS account.
• Create 2 reusable Terraform modules to manage a VPC and EC2 instance in AWS.
1. The Network module will include 2 public subnets, route tables, and an internet gateway.
2. The Server module will create a single EC2 instance with Nginx installed, a security group, and key pair.
Use the Server module twice to create EC2 instance in each subnet.
![WhatsApp Image 2025-03-06 at 22 07 45_a605eb02](https://github.com/user-attachments/assets/8c930e78-f687-4dbc-bed3-000ffca4b5ae)


Solution:
please find the source code added to the lab folder

1. Create vpc manually

![manual_vpc](https://github.com/user-attachments/assets/1fc70fa0-70d3-4400-898e-6acd86caaf63)

2. Run "terraform apply" to create the infrastructure

![apply](https://github.com/user-attachments/assets/9840c476-0f98-4e25-bf7f-585481860729)

Making sure all parts exist and works as expected

3. Network (subnets, route tables, internet gateway)

![network](https://github.com/user-attachments/assets/1f29ad8a-e052-4544-b4b3-fc073b4a437a)

4. EC2 Instances 

![instances](https://github.com/user-attachments/assets/01f9882e-33bc-43be-b5ea-93b924a58b6a)

5. Security groups

![sg](https://github.com/user-attachments/assets/83234131-2bf0-422a-907e-f1127d84f587)

6. Key pairs

![keys](https://github.com/user-attachments/assets/4e9c1fe3-a98a-42b3-9a02-5c7cf23a543a)

7. Making sure both servers has nginx installed on it

![server1REAL](https://github.com/user-attachments/assets/c870cbea-6c36-476d-8eef-46252e423e9b)
![server2](https://github.com/user-attachments/assets/f518c006-8f7c-49f5-ac1b-38527a568444)



