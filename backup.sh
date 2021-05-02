# Backup cyberpanel website to cloud
#!/bin/bash
echo   "script by The Mask - onehack.us";
echo "Starting Backup website data";
cyberpanel createBackup --domainName yourwebsite.com; 
cyberpanel createBackup --domainName yoursecondwebsite.com; 
echo "Finished";
echo '';
echo "Starting upload website data to pcloud";
rclone copy /home/yourwebsite.com/backup/backup-yourwebsite.com-*.tar.gz name of pcloud backup:folder of backup file save; 
rclone copy /home/yoursecondwebsite.com/backup/backup-yoursecondwebsite.com-*.tar.gz name of pcloud backup:folder of backup file save;  
#here is demo backup1:backup_xxxx please remove demo line
rclone copy /home/abc.link/backup/backup-abc.link-*.tar.gz backup:backup_abc.link; 
echo "Finished";
echo '';
echo "Starting upload website data to storj.io";
rclone copy /home/yourwebsite.com/backup/backup-yourwebsite.com-*.tar.gz name of storj.io backup:bucket of backup file save; 
rclone copy /home/yoursecondwebsite.com/backup/backup-yoursecondwebsite.com-*.tar.gz name of storj.io backup:bucket of backup file save;
echo "Finished";
echo '';
echo "Starting remove local backup file";
cd /home/yourwebsite.com/backup/ && rm -rf *;   
cd /home/yoursecondwebsite.com/backup/ && rm -rf *;   
echo "Finished";
echo '';
