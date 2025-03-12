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
```bash
docker pull jenkins/jenkins
```
3. Make a home directory for jenkins (will be used later for the volume)
```bash
sudo mkdir /var/jenkins_home
sudo chmod 777 /var/jenkins_home -R
```
4. Run the image to create a container
```bash
sudo docker run -p 8080:8080 -d -v /var/jenkins_home/:/var/jenkins_home jenkins/jenkins
```
5. Get the jenkins authentication password by running this command
```bash
sudo docker logs -f CONTAINER-ID
```
6. Start using Jenkin by typing you VM-ip:the port

Get you VM ip by running:
```bash
ifconfig
```
OR
```bash
hostname -I
```

![jenkins](https://github.com/user-attachments/assets/5d9f2fff-62f4-42b2-9578-3ecb90c7b7ad)

