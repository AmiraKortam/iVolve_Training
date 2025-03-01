Lab 9: Ansible Roles for Application Deployment
• Objective: Organize Ansible playbooks using roles. Create an Ansible role for installing Jenkins, docker, openshift CLI 'OC'.

Solution:
1. create role for each tool installation

![creating_roles](https://github.com/user-attachments/assets/73532602-9985-4171-81ad-7b97347b09dc)

2. create an inventory file

3.  write the playbook in the /tasks/main.yaml files in each role

4.  create a playbook that will include all roles and run it

ansible-playbook -i inventory.ini playbook.yml -K

![docker](https://github.com/user-attachments/assets/5cc0ed89-490e-4f02-9801-eb3aede883eb)
![openshift](https://github.com/user-attachments/assets/7e84a542-6037-4a4a-92fc-9cc8bc0112ef)
![jenkins](https://github.com/user-attachments/assets/c0ebfab7-acfa-458e-a827-c510ef193334)

5.  make sure all tools are installed successfully

![image](https://github.com/user-attachments/assets/698e6c2b-b746-4f26-bfc9-7a5ec4dffcad)
![image](https://github.com/user-attachments/assets/2043973e-37af-493e-878e-2c7461722241)
![image](https://github.com/user-attachments/assets/8763853e-6676-4bac-9344-11c64da11093)
