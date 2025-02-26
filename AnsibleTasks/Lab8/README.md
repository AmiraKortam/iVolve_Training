Lab 8: Ansible Vault
• Objective: Write an Ansible playbook to install MySQL, create ivovle database,
create user with all privileges on ivolve DB. Use Ansible Vault to encrypt sensitive information such as database user password,
and incorporate the encrypted data into an Ansible playbook.

Solution:

1. create vault key file

![create_vault](https://github.com/user-attachments/assets/102a9042-97b0-4ca5-91ec-94298bef0df6)

with content:
![vault](https://github.com/user-attachments/assets/2ea7ee04-1264-4345-9656-f84ea1e2d782)


2. create ansible playbook with the following content

![playbookp1](https://github.com/user-attachments/assets/52754e0f-b3f1-433c-a032-ce05b1b9b434)
![playbookp2](https://github.com/user-attachments/assets/3a1d8b6f-71a9-43dd-a004-779e129f89a4)

the sensitive data is passed as variables
3. run playbook

![run_playbook](https://github.com/user-attachments/assets/1d3fff8c-465f-4989-938f-1da845ccdf66)

4. make sure database is created successfully

![database](https://github.com/user-attachments/assets/a2ddd11c-91bb-4898-a18e-1b7ecc818bd2)
   
