LINUX MINT INSTALLATION WITH POSTGRESQL & PG_CRON 16
----------------------------------------------------

1.INSTALL
sudo apt update
sudo apt install postgresql-16-cron

2.VERIFY
dpkg -l | grep cron

3.EDIT CONFIGURATION FILE
sudo nano /etc/postgresql/16/main/postgresql.conf

3.1 UPDATE as follows
shared_preload_libraries = 'pg_cron'
3.2 ADD:
cron.database_name = 'PersonalFinance'

4.RESTART PGSQL
sudo systemctl restart postgresql

5.CREATE EXTENSION
connect to the database defined above and run:
CREATE EXTENSION pg_cron;

6.VERIFY
SELECT * FROM pg_available_extensions
WHERE name = 'pg_cron';


