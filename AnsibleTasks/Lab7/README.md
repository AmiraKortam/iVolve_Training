Lab 7: Ansible Playbooks for Web Server Configuration
• Objective: Write an Ansible playbook to automate the configuration of a web server.
(the configuration is installing nginx and creating a simple html page)

Solution:
(Note: assuming connection between 2 virtual machines is up and running)

![ubuntu-key](https://github.com/user-attachments/assets/518264c2-5c5d-4384-b46a-9669d0c69d2a)
![connect_to_pc](https://github.com/user-attachments/assets/7e721986-597a-4393-b0ea-a211a57c809a)


1. Insure ansible is installed

2. Create folder for ansible projects and create an inventory file that will include all hosts

![ansible-worksation](https://github.com/user-attachments/assets/bb1d461b-7598-447f-a7ed-e69aadc17360)

![inventory](https://github.com/user-attachments/assets/6a7c8e97-5e2e-42ef-ad4e-56794ea02e09)


3. Create the playbook.yaml file with the following content

![playbook](https://github.com/user-attachments/assets/a3d0ba7c-f158-4f7f-af8c-5f4abb9bd753)

4. Run the playbook
using the inventory to access the VM and -K to ask for password

![run-playbook](https://github.com/user-attachments/assets/b497f017-67e0-4dea-8215-8817ba2ed85b)

6. Check hosts and make sure the configuration was done successfully

![image](https://github.com/user-attachments/assets/0d62e67d-aecf-433f-8c6a-fad42317aa60)

![image](https://github.com/user-attachments/assets/033a2781-094d-4b07-9e26-9a32ef6b262c)


