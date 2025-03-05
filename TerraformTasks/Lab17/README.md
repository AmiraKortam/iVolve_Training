Lab 17: Remote Backend and LifeCycles Rules
• Implement the below diagram with Terraform.
• Install NGINX using user data.
• Store state file in a remote backend (S3).
• Use create_before_destroy Lifecycle on the EC2 and verify it.
• Compare between different Lifecycles Rules.

![image](https://github.com/user-attachments/assets/18883e03-263f-4160-8429-bce730579ebf)


Solution:
1. Run 'terraform init'

![backend](https://github.com/user-attachments/assets/0e775e42-8a58-46d7-a752-b8552ae62974)

2. Run 'terraform apply'
![apply](https://github.com/user-attachments/assets/bb267591-7594-4f63-99c9-8349a6b02d37)

(Making sure all resourses exist)
- VPC and Subnet and RouteTable and IGW
![network](https://github.com/user-attachments/assets/f3b0c6d6-0741-4186-8561-e9d2a7f2aecd)

- EC2
![ec2](https://github.com/user-attachments/assets/4cab0902-379b-436f-9682-87fd3b7c9795)

- nginx
![ec2ip](https://github.com/user-attachments/assets/1f4e9a6b-80da-4388-81c0-1f9a69279c90)
![nginx](https://github.com/user-attachments/assets/40bc0337-190c-4cf1-a105-884e222d2e8a)

- CloudWatch
![cloudwatch](https://github.com/user-attachments/assets/b856809a-745c-4a39-b3f5-67a4822b6bca)

- SNS
![snstopic](https://github.com/user-attachments/assets/3a4364c9-1d99-46ae-9f9b-dea13a30da09)
![snssub](https://github.com/user-attachments/assets/0d6040e2-fc0c-4479-b851-092e1f7f5ee3)
