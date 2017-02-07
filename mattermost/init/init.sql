create user 'mmuser'@'%' identified by 'mostest';
create database mattermost;
grant all privileges on mattermost.* to 'mmuser'@'%';
