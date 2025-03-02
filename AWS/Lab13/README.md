Lab 13: Create AWS Load Balancer
• Objective: create VPC with 2 subnets, launch 2 EC2s with nginx and apache installed, and create and configure a Load Balancer to access the 2 Web servers.


Solution:
 1. VPC and subnets
 
 ![image](https://github.com/user-attachments/assets/ae9d4040-03e7-4d28-84f6-9d741d81ef63)

 2. 2 ec2 instances
 
 ![servers](https://github.com/user-attachments/assets/352dbad2-efbd-4ae4-bf0d-6b120522704d)

 3. first ec2 instance with nginx
 
 ![server1](https://github.com/user-attachments/assets/de39b11e-495a-4edb-b8dc-3ee67a1c1bd4)

 4. second ec2 instance with apache
 
 ![server2](https://github.com/user-attachments/assets/17d5f25a-1e34-449b-907b-ce41ef5f6bb1)

 5. security group for instances
 
 ![sg](https://github.com/user-attachments/assets/fbc75a1a-b853-45f0-90f7-e4351b8ce5c3)

 6. Create LoadBalancer as well as its target groups

 ![lb](https://github.com/user-attachments/assets/e44bd5b1-4718-4ae8-ad80-d52c5e6ca018)
 ![tg](https://github.com/user-attachments/assets/b35bebd9-502f-4a17-9b4c-cdb36dc7662a)

 7. Test App LB
  
 ![nginx](https://github.com/user-attachments/assets/05b4821f-032e-4209-80b5-51c2288d260b)
 ![apache](https://github.com/user-attachments/assets/fe2a3751-6c57-48d4-9b5c-6c26a1f55a7c)



    
