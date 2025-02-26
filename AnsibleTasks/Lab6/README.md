Lab 6: Ansible Installation
Objective: Install and configure Ansible Automation Platform on control nodes,
create inventories of a managed host,
and then perform ad-hoc commands to check functionality without playbook.

Solution:
create 2 Virtual machines , i will call it VM1 (local that has ansible) and VM2 (remote that should connect to it)

1. make sure that ansible is installed
use this commands to install it:
sudo apt install ansible -y

2. make sure that VM1 has ssh installed and enabled
use this commands to install it:   
sudo apt install openssh-server -y
![image](https://github.com/user-attachments/assets/1c74d2f5-0230-45cf-8cdf-99624d416f90)

3. get VM2 ip

![image](https://github.com/user-attachments/assets/be22e39b-2bd7-47a4-bb0c-1480624cfa4e)


4. ssh from VM1 to VM2

![image](https://github.com/user-attachments/assets/bd82a6ac-d41b-4155-aa46-24cd78d913e9)

5. Test using any command

    
