Lab #1:
create a new user and a new group, add the user to the group and enable the user to run: "sudo apt install nginx" without the sudo password

Solution:
1. Create new group
   
   ![1](https://github.com/user-attachments/assets/41f4bc66-25db-40c4-bcad-43b4c937f912)
2. Create new user and add it to the group
   ![2](https://github.com/user-attachments/assets/25a71045-b735-481a-9fb9-15275b5688ef)
3. Add password to the newly created user
   ![3](https://github.com/user-attachments/assets/4533fdba-b9cd-452b-881f-b8be7ae5f117)
4. Create seperate file (not recommanded to modify in the sudoers file) in the same folder as the sudoers file and add this line to it:
   "ivolveAmira ALL=(ALL) NOPASSWD: /usr/bin/apt install nginx"
   this line enable the user to run only this command without prompting of password when using sudo
   ![4](https://github.com/user-attachments/assets/0b383907-02d5-469b-bdc9-edb1f0ab98d1)

Now the new user can run the command without asking for password while using sudo!!
![5](https://github.com/user-attachments/assets/bc9743c2-faeb-40c6-9a63-e4a4dbef7fe1)
