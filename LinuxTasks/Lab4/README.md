Lab 4: Disk Management and Logical Volume Setup
Objective: Attach a 15GB disk to your VM, make 4 partitions from this disk 4GB, 2GB, 6GB
and 3GB. Use the 4GB partition as a file svstem. configure the 2GB partition as swap.
Initialize the second 5GB as a Volume Group (VG) with a Logical Volume (LV), 
then extend the LV by adding the last 3GB partition.

Solution:

1. Attach 15GB
this is done from the VirtualBox interface and to make sure run lsblk

![add15G](https://github.com/user-attachments/assets/49c35f36-215a-47c1-833f-6ebd88fb471a)
![sdb](https://github.com/user-attachments/assets/109794c1-d3b0-4241-ba86-241ba73716c2)

2. Partition the 15G
   run command "sudo fdisk /dev/sdb" and partition using the interactive shell

![partition1](https://github.com/user-attachments/assets/d212af67-3319-4774-aaf9-d65345173c05)
![partition2](https://github.com/user-attachments/assets/20a92abd-c3bb-41a2-87b3-4f9e0735032f)
![partition3](https://github.com/user-attachments/assets/2c841b86-b51d-4577-a978-3f7da056a060)
![partition4](https://github.com/user-attachments/assets/293482db-1386-4e70-ab5f-e2ea9a469375)
![partitions](https://github.com/user-attachments/assets/07e542d1-0c85-471b-8efa-09790622c4b2)


3. Modify partition 1 as needed

![sdb1](https://github.com/user-attachments/assets/3d818f0e-cb35-4119-9115-d1d993c0c977)
![sdb11](https://github.com/user-attachments/assets/b765f2ad-2fa4-4874-bac7-e74bb882edf3)

4. Modify partition 2 as needed

![sdb2](https://github.com/user-attachments/assets/7fa8a653-f60e-43df-a4bb-48bacc410358)
![sdb22](https://github.com/user-attachments/assets/100e9753-32fa-4aab-8f66-7f7cdb346232)

5. Modify partition 3 and 4 as needed

![sdb3](https://github.com/user-attachments/assets/c5a70ed7-b3c4-4bf1-8753-28bca1f4cdf6)
![sdb33](https://github.com/user-attachments/assets/f3072ffc-fb16-4968-970f-36fe6ccd7de9)
![sdb333](https://github.com/user-attachments/assets/119a9ff3-cd98-4db1-8796-e6bfa89417cf)
Mount the created lv
![mount_lv](https://github.com/user-attachments/assets/84afe8cf-e09a-4145-8bff-1725b9895f01)

![sdb3333](https://github.com/user-attachments/assets/42290717-72a2-46a3-941c-446f0b51949c)

![sdb4](https://github.com/user-attachments/assets/b41280f5-cddf-43a5-9be9-f14e2e423c0b)

extend:

![sdb44](https://github.com/user-attachments/assets/e19262d1-3979-4f39-9541-dc143b136068)
![extendlv](https://github.com/user-attachments/assets/fb7a0a1b-eab3-43b6-8346-68cd911f0250)


result will look like this:
![lsblk](https://github.com/user-attachments/assets/706d9524-c7da-43c2-9913-ae2bae8ff287)








