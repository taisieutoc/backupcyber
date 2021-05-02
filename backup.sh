# Backup cyberpanel website to cloud
#!/bin/bash
echo   "script by vandat";
echo "Starting Backup website data";
cyberpanel createBackup --domainName 15s.link; 
cyberpanel createBackup --domainName taisieutoc.net; 
echo "Finished";
echo '';
echo "Starting upload website data to pcloud";
rclone copy /home/15s.link/backup/backup-15s.link-*.tar.gz backup1:backup_51.79.242.224; 
 rclone copy /home/taisieutoc.net/backup/backup-taisieutoc.net-*.tar.gz backup1:backup_51.79.242.224;  
echo "Finished";
echo '';
echo "Starting upload website data to storj.io";
rclone copy /home/15s.link/backup/backup-15s.link-*.tar.gz backup2:taisieutoc; 
rclone copy /home/taisieutoc.net/backup/backup-taisieutoc.net-*.tar.gz backup2:taisieutoc;
echo "Finished";
echo '';
echo "Starting remove local backup file";
cd /home/15s.link/backup/ && rm -rf *;   
cd /home/taisieutoc.net/backup/ && rm -rf *;   
echo "Finished";
echo '';
