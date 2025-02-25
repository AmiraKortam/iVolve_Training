Lab 5: SSH Configurations
Objective: Generate public and private keys and enable SSH from your machine to another VM using the key.
Configure SSH to just run 'ssh ivolve' without specify username, IP and key in the command.

Note: i am connecting my local machine (windows) to my VM

Solution:
1. Generate key
   
![key](https://github.com/user-attachments/assets/081f8a8a-22d3-478f-bc75-b178f19f766e)

2. Copy the public key to the VM

![keyfile_ubuntu](https://github.com/user-attachments/assets/9e7328e5-f90d-443e-9c82-5e22cbf87162)

![authorized](https://github.com/user-attachments/assets/9c6986f5-9cae-4948-bc2f-c52cdd64a6b8)

Note: install ssh if it is not installed and enable it (it will work after rebooting)

![install_ssh](https://github.com/user-attachments/assets/3b231a47-75fa-49a1-b989-1e38704b42d5)

3. Modify in the /etc/ssh/sshd_config file

![file](https://github.com/user-attachments/assets/80379a16-6d3c-4ba8-a028-c350bf6dbf83)

remove # from these 2 lines

![ssh_file](https://github.com/user-attachments/assets/a41ae1a4-1ed0-4734-9511-dcccd6e35a0f)

4. Create the config file to be able to run 'ssh ivolve' without specify username, IP and key.

![file_path](https://github.com/user-attachments/assets/632e75e0-e306-43f0-aae0-20f727b6e52c)

![config_file](https://github.com/user-attachments/assets/ed48a5fc-4c46-49fa-bdb6-2a4ee5637a7d)

get ip by running:

![get_ip](https://github.com/user-attachments/assets/b0e5b7ee-bc35-4d17-8498-7c124bc14d90)


The connection is estableshed !!
![ssh_windows](https://github.com/user-attachments/assets/30a80130-d767-485d-abcf-27158b10252a)




   
