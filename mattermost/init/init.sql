create user 'mmuser'@'%' identified by 'mmuser';
create database mattermost;
grant all privileges on mattermost.* to 'mmuser'@'%';
