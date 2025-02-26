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

3. get VM2 ip
use this commands to get it: hostname -I   

4. ssh from VM1 to VM2

![ssh_conn](https://github.com/user-attachments/assets/364c6186-c1ce-492d-85dd-a5b84f321ad7)

5. Test using any command

![adhoc](https://github.com/user-attachments/assets/abb8d0ad-269d-4bb4-bff6-b948cad9bb7d)

