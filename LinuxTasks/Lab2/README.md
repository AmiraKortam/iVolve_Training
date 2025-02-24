Lab #2:
install MySQL and run a cron job, take a backup from DB and save it anywhere, every sunday, at 5 o'clock.

Solution:
1. install mysql
   using the command : "sudo apt install mysql-server -y"
2. create script with the following content
   (Its easier to place the script on the path /usr/local/bin to be able to run it without adding it manually to $PATH )
   ![lab2script3](https://github.com/user-attachments/assets/b62ec4e6-d566-4f34-9c42-f9680c99daa9)
   the script create file with the date on its name and the databases as the content and store it in a folder that i created and make it accessible only by file owner
   ![6](https://github.com/user-attachments/assets/f9751cab-a7e8-44ed-a4c8-80a5240b2065)
the +x permission to make the script executable, allowing it to run like a program
4. create a crontab job that run this script every sunday at 5PM
   crontab -e
   ![crontab](https://github.com/user-attachments/assets/d554cb8b-5349-40e0-ad3c-e113389a2f6b)

