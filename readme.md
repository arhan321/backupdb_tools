# TOOLS PHP BACKUP AUTOMATIC DATABASE WEEKLY

## step by step

### step 1 clone this project :
```bash
git clone https://github.com/arhan321/backup_db
```
### step 2 
sesuaikan code yang ada di file 
```bash
backup.php
config.php (server db backup)
run_backup.php (cron job inject)
```
### step 3
setelah itu silahkan tambahkan cron job di dalam operating system masing masing, misalkan pada ubuntu server
```bash
sudo crontab -e
```
### step 4
input script cron job, sample : 

backup permenit misalkan

wajib menyesuaikan dengan struktur folder anda
```bash
* * * * * /usr/bin/docker exec php_backup php /var/www/html/run_backup.php >> /home/backend/backup_php_tools/backup.log 2>&1
```
### step 5
cek cron job apakah sudah terpasang apa belum :
```bash
crontab -l
```
result : 
``` bash
 backend@backend  ~/backup_php_tools   master  sudo crontab -l                              
# Edit this file to introduce tasks to be run by cron.
# 
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
# 
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').
# 
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
# 
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
# 
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
# 
# For more information see the manual pages of crontab(5) and cron(8)
# 
# m h  dom mon dow   command
* * * * * /usr/bin/docker exec php_backup php /var/www/html/run_backup.php >> /home/backend/backup_php_tools/backup.log 2>&1
```
check log : 
```bash
 backend@backend  ~/backup_php_tools   master ±  tail -f /home/backend/backup_php_tools/backup.log
}
{
    "status": "success",
    "message": "Backup database berhasil dibuat.",
    "file_name": "backup_db_gaji_2026-04-10_05-40-01.sql",
    "file_path": "/var/www/html/uploads/backup/backup_db_gaji_2026-04-10_05-40-01.sql",
    "tables": 32,
    "rows": 1253,
    "size_bytes": 285876
}
```
### step 6
jika sudha berhasil backup sendiri permenit maka ganti menjadi perminggu dengan cara masuk ke cronjob nya dan ganti script nya menjadi : 
```bash
0 1 * * 0 /usr/bin/docker exec php_backup php /var/www/html/run_backup.php >> /home/backend/backup_php_tools/backup.log 2>&1
```

# HAPPY CODING !!