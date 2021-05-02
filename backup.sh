# Backup cyberpanel website to cloud
#!/bin/bash
echo   "script by The Mask - onehack.us";
echo "Starting Backup website data";
cyberpanel createBackup --domainName yourwebsite.com; 
cyberpanel createBackup --domainName yoursecondwebsite.com; 
echo "Finished";
echo '';
echo "Starting upload website data to pcloud";
rclone copy /home/yourwebsite.com/backup/backup-yourwebsite.com-*.tar.gz backup1:backup_51.79.242.224; 
 rclone copy /home/taisieutoc.net/backup/backup-yoursecondwebsite.com-*.tar.gz backup1:backup_51.79.242.224;  
echo "Finished";
echo '';
echo "Starting upload website data to storj.io";
rclone copy /home/yourwebsite.com/backup/backup-15s.link-*.tar.gz backup2:taisieutoc; 
rclone copy /home/yoursecondwebsite.com/backup/backup-taisieutoc.net-*.tar.gz backup2:taisieutoc;
echo "Finished";
echo '';
echo "Starting remove local backup file";
cd /home/yourwebsite.com/backup/ && rm -rf *;   
cd /home/yoursecondwebsite.com/backup/ && rm -rf *;   
echo "Finished";
echo '';
