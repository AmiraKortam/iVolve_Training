Lab 20: Jenkins Installation
Install Jenkins
• OPTION 1: Install and configure Jenkins as a service
• OPTION 2: Install and Configure Jenkins as a container.


Solution:
i choose option 2 and here are the steps:
(You should have an ubuntu VM)

1. Install docker if it dose not exist
```bash
sudo apt install docker.io
systemctl enable docker
systemctl status docker
```

2. Pull Jenkins image from docker hub

3. Make a home directory for jenkins (will be used later for the volume)

4. Run the image to create a container

5. Get the jenkoins authentication password by running this command

6. Start using Jenkin by typing you VM-ip:the port 
