Lab 11: AWS Security
• Objective: Create AWS account, set billing alarm, admin create 2 IAM groups (admin-developer),
group has admin permissions, developer group only access to EC2, 
create admin-1 user with console access only and enable MFA & admin-2-prog user with CLI access only and list all users and groups using commands, 
create dev-user with programmatic and console access (take screenshots access EC2, S3)

Solution:
since i dont have an aws account, i took a user account from my friend main account

1. Billing alarm

![image](https://github.com/user-attachments/assets/20d9f6f1-64bc-46a4-8005-0e56f4d1252c)
![image](https://github.com/user-attachments/assets/b46839a6-2435-4214-82b7-c861cefed4ad)


2. IAM groups

![create_admin_grp](https://github.com/user-attachments/assets/1e7f05c6-a02f-48b9-a81d-6d6d3051ee43)
![create_dev_grp](https://github.com/user-attachments/assets/268be201-25ad-476f-bbb9-4dc16f24eba0)


3. admin1 user

![admin1](https://github.com/user-attachments/assets/f5ad1452-50b3-42ac-b2cb-102ef913b6b3)
![admin_access](https://github.com/user-attachments/assets/5c0a9faa-e32c-40de-8904-45f3d572f498)

4. admin2-prog user

![admin2](https://github.com/user-attachments/assets/49b18e35-b451-4348-a8c9-f3320571d52b)

5. dev-user

![devuser](https://github.com/user-attachments/assets/caa6f6f1-2fbe-43db-8dd1-c31ca512a3ef)
![dev_access](https://github.com/user-attachments/assets/3454a821-8467-433a-aee4-048ad29a450b)

6. developer user access to ec2

![ec2](https://github.com/user-attachments/assets/b7c5494b-6cc4-401c-9f89-89a1c3f4e35a)

7. developer user not having access to s3

![s3](https://github.com/user-attachments/assets/c82b320e-acc2-4532-a5a9-9dd144f888c6)

8. command to list groups and users
groups:
![groups](https://github.com/user-attachments/assets/7d328a12-fc5e-4b74-b123-31ef3cbdbbe2)
users:
![list](https://github.com/user-attachments/assets/12af630a-efc8-476b-a806-d49412783eeb)
![list2](https://github.com/user-attachments/assets/aaebddae-ac6c-4fe1-8950-fe4b496fc831)


    
