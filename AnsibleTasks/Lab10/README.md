Lab 10: Ansible Dynamic Inventories
Objective: Set up Ansible dynamic inventories to automatically discover and manage infrastructure. Use Ansible Galaxy role to install Apache.

Solution:
1. Create ec2 instance
(ubuntu ami, choose vpc that has a public subnet and secuity group that allows ssh and http bound rules)

![image](https://github.com/user-attachments/assets/27bf6a65-61e0-4729-9a4e-7077bff8ed14)

2. Create key pair and save the .pem file
3. create folder and add to it the key, inventory, playbook: inventory file will contain the ec2 instance and the playbook will have a simple task to install nginx  
4. create the ansible.cfg file to be able to connect to aws ec2 instance

5. run the playbook

![playbook-run](https://github.com/user-attachments/assets/82052733-f9b9-433d-a820-3e6059a96238)

6. make sure nginx is installed successfully

![nginx](https://github.com/user-attachments/assets/61d0c50e-452b-4d05-a31f-22fc63d90ac8)
![nginxpage](https://github.com/user-attachments/assets/80f6515f-ab70-4f2d-8635-c34ae6f22dae)

