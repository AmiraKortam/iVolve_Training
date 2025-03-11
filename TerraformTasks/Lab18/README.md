Lab 18: Terraform Variables and Loops
• Implement the below diagram with Terraform.
• Use variables.tf and terraform.tfvars files.
• Install Nginx using remote provisioner, Apache using user data.
• Output public & private IPs of the EC2s.

![WhatsApp Image 2025-03-06 at 22 07 44_2aea107e](https://github.com/user-attachments/assets/3c96ed4a-1113-4aa4-a7e2-f74833ba7a10)


Solution: 
please find sourcse code added to the folder 
1. Run "terraform apply" after initializing it

![apply](https://github.com/user-attachments/assets/008a6e5c-2165-48be-b265-912b4bb3a359)

(Make sure all the resourses was successfully created)
2. vpc

![vpc](https://github.com/user-attachments/assets/294f1d14-8c4c-4392-9f68-59c4b94f3a65)

3. subnets

![subnets](https://github.com/user-attachments/assets/1f75d624-f22b-4dd6-af76-d38d8dd6372e)

4. elastic ip

![ip](https://github.com/user-attachments/assets/aa02ecbe-9fba-4df6-b6ad-5b4420ac6d2d)

5. internet gateway

![igw](https://github.com/user-attachments/assets/8e85ca27-6b81-4f1e-8905-b9e34f4f1487)

6. route tables

![rt](https://github.com/user-attachments/assets/179a310e-15a1-49a1-9a25-cec71288ef9c)

7. nat

![nat](https://github.com/user-attachments/assets/1ef6b310-8812-45a2-82e5-67d289afc56a)

8. ec2 instances

![ec2](https://github.com/user-attachments/assets/90c16e75-d3d5-4656-a17a-029c5ce3586f)

9. security groups

![sg](https://github.com/user-attachments/assets/2dbc78aa-4a89-426c-a493-9e47d5d77893)

10. Making sure nginx and apache is installed


![apache](https://github.com/user-attachments/assets/e5fe9585-aed8-4201-afd7-f47a539d58a6)
![nginx](https://github.com/user-attachments/assets/30afa4b3-1adb-4191-9d3e-23cd13b9e5df)
