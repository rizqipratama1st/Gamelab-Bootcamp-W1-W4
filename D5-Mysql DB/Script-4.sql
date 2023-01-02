-- -----------------------------------------------------------------
-- Untuk Setup DB :
-- Copy Query SQL ini di phpmyadmin.
-- -----------------------------------------------------------------

drop database if exists educa_sms_db;
CREATE DATABASE educa_sms_db;
USE educa_sms_db;
CREATE USER 'educa_sms'@'%' IDENTIFIED BY 'educa_sms';
GRANT ALL PRIVILEGES ON *.* TO 'educa_sms'@'%';
FLUSH PRIVILEGES;


drop table if exists tbl_users;
create table tbl_users (
id_users int PRIMARY key AUTO_INCREMENT,
username varchar(50) not null,
user_type tinyint(4) not null,
password varchar(50) not null
);


drop table if exists tbl_students;
create table tbl_students (
id_student int primary key auto_increment,
first_name varchar(25) not null,
last_name varchar(25) not null,
gender_student tinyint(2) not null,
mother_name varchar(50) default null,
father_name varchar(50) default null,
date_of_birth date not null,
religion varchar(10) not null,
email varchar(50) not null,
mother_occup varchar(50) default null,
addmision_date date not null,
id_admission int not null,
photo_student varchar(255),
id_users int not null,
username varchar(50) not null,
blood_group char(5) default null,
phone_student varchar(25) not null,
address_student text default null,
class varchar(50) not null,
short_bio text default null
);

create table tbl_teachers (
id_teacher int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
gender_teacher tinyint(2) not null,
date_of_birth date not null,
religion varchar(10) not null,
email varchar(50) not null,
photo_teacher varchar(255),
id_users int not null,
username varchar(50) not null,
blood_group char(5) default null,
phone_teacher varchar(25) not null,
address_student text default null,
class varchar(50) not null,
short_bio text default null
);


create table tbl_parents (
id_parent int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null, 
gender_parent tinyint(2) not null,
occupation varchar(50) default null,
blood_group char(5) default null,
religion varchar(10) not null,
email varchar(50) not null,
address_parent text default null,
phone_parent varchar(25) not null,
short_bio text default null
);

create table tbl_books (
id_book int primary key auto_increment,
name_book varchar(50) not null,
category_book varchar(50) not null,
writer_book varchar(50) not null,
class varchar(50) not null,
publish_date date not null,
upload_date date not null
);

