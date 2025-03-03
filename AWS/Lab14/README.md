Lab 14: SDK and CLI Interactions
• Objective: Use the AWS CLI to Create an S3 bucket, configure permissions, and upload/download files to/from the bucket.
Enable versioning and logging for the bucket.

Solution:

1. Download and run the AWS CLI MSI installer for Windows (64-bit)

![aws-v](https://github.com/user-attachments/assets/9cdaddaf-e484-49e4-b7d2-1de4485a114c)

2. Configure AWS CLI with Credentials

![config](https://github.com/user-attachments/assets/c33fbeb1-eba3-404f-9af9-837ed3573f99)

3. Create Bucket

![create](https://github.com/user-attachments/assets/2a1e3b4d-874a-4b84-948f-71f1b5230783)
![bucket](https://github.com/user-attachments/assets/00f9cf28-45b7-4472-a6fc-a8a6dc450125)


4. Set bucket policy

![policy-cmd](https://github.com/user-attachments/assets/3f6ab989-c2ed-406b-99f2-55efacd17633)
and the policy content file is uploaded 

![policy-console](https://github.com/user-attachments/assets/a7be8f92-f177-427c-ae06-ad30841fb493)

5.  Upload file to bucket

![uploadfile](https://github.com/user-attachments/assets/78f11580-98db-44bd-bbe9-a6ab61e93713)
![object1](https://github.com/user-attachments/assets/99842a75-5bb1-47f1-ae8f-0b822d0ec24c)


6. Download folder/file from bucket

i create a test folder with one file to test downloading from bucket
![testFolder](https://github.com/user-attachments/assets/49d9a09a-901e-48dd-9e31-53b1006d5eac)

![download](https://github.com/user-attachments/assets/d674ebda-07ac-481b-9982-1ef7060a178e)
![downloadcmd](https://github.com/user-attachments/assets/4c1f3b4f-7c44-490a-844a-de46aa4d0324)


7. Enable versioning

![versioning](https://github.com/user-attachments/assets/772ad20e-8bf9-4b22-b3c7-25299c82f5c4)
![versioningconsole](https://github.com/user-attachments/assets/e49ab3eb-ded6-4a54-af2c-a467fe803c8c)









Reference:
https://awscli.amazonaws.com/AWSCLIV2.msi
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
https://docs.aws.amazon.com/cli/latest/reference/s3api/create-bucket.html
https://medium.com/@josemanuel.gilperez/uploading-files-to-an-s3-bucket-using-aws-cli-4ac89a0b024b
https://www.geeksforgeeks.org/how-to-download-floder-from-aws-s3-cli-ui/
https://docs.aws.amazon.com/AmazonS3/latest/userguide/manage-versioning-examples.html
