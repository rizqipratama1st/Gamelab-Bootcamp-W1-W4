-- Tugas Praktik 3

-- create database belajar_db;
-- 
-- use belajar_db;
-- 
-- create table saya(
-- nik int not null,
-- nama_depan varchar(10) not null,
-- nama_belakang varchar(10) not null,
-- tanggal_lahhir date not null
-- );
-- 
-- describe saya;
-- 
-- rename table saya to diri_saya;
-- 
-- alter table diri_saya add column if not exists kota_tinggal varchar(20);
-- 
-- describe diri_saya;
-- 
-- alter table diri_saya drop kota_tinggal;
-- 
-- drop table diri_saya;

------------------------------------------------------------------------

-- tugas praktik 5
-- 
-- show tables;
-- 
-- CREATE TABLE if not exists tasks (
-- task_id INT AUTO_INCREMENT primary key,
-- title VARCHAR(255) NOT NULL,
-- start_date DATE,
-- due_date DATE,
-- status TINYINT NOT NULL,
-- priority TINYINT NOT NULL,
-- description TEXT
-- ) ENGINE=INNODB;
-- 
-- select * from tasks;
-- 
-- 
-- insert into tasks(title,status,priority) 
-- values
-- ('Belajar HTML',0,1);
-- 
-- insert into tasks(title,status,priority) 
-- values
-- ('Belajar CSS',0,1),
-- ('Belajar Bootstrap',0,1),
-- ('Belajar tailwind',0,1),
-- ('Belajar VanilaCSS',0,1),
-- ('Belajar JS',0,1),
-- ('Belajar JQuerry',0,1),
-- ('Belajar Mysql',0,1),
-- ('Belajar slim',0,1),
-- ('Belajar meedo',0,1),
-- ('Belajar twig',0,1);

-- -------------------------------------------
-- Tugas 6

-- use penampung_data;
-- 
-- show tables; 
-- 
-- select * from agents;
-- 
-- describe agents;
-- 
-- update agents set AGENT_NAME = 'Swipper %' where AGENT_CODE = 'A001';
-- update agents set AGENT_NAME = 'Ayaka %' where AGENT_CODE = 'A002';
-- update agents set AGENT_NAME = 'Haruka %' where AGENT_CODE = 'A003';
-- update agents set AGENT_NAME = 'sizuka %' where AGENT_CODE = 'A004';
-- update agents set AGENT_NAME = 'nabila %' where AGENT_CODE = 'A005';

-- ------------------------------------------------------------------
-- Tugas 7
-- update agents set AGENT_NAME = replace(AGENT_NAME, ' %','');


----------------------------------------------------------------------
-- Tugas 9

-- delete from agents where AGENT_CODE = 'A001';
-- 
-- select * from agents;
-- 
-- truncate table agents; 
-- 
-- select * from agents;


-- ----------------------------------------------------------------------
-- Tugas 9

-- use tugas9;
-- 
-- show tables;
-- 
-- select * from tbl_member;
-- 
-- select * from tbl_member where status = '1' and gender = '1';
-- 
-- select * from tbl_member where status = '1' like '%ra';

-- -------------------------------------------------------------------------

create table tbl_member (
id int(11) auto_increment primary key,
nama varchar(100) not null,
gender char(1)
);

create table tbl_participant(
id int(11) auto_increment primary key,
id_member tinyint(4)
);


insert into tbl_member(nama,gender) values ('Uin','L'),('Mia','P'),('Milo','L');
insert into tbl_participant(id_member) values ('2'),('3');

select * from tbl_member;
select * from tbl_participant;

-- Jawaban No.1
select a.id,nama,gender from tbl_member as a 
right join tbl_participant b on a.id = b.id_member;

-- Jawaban No.2
select a.id,nama,gender from tbl_member as a 
right join tbl_participant b on a.id = b.id_member where gender ='P';


-- ----------------------------------------------------------------------

drop table tbl_point;

create table tbl_point(
id int auto_increment primary key,
member_name varchar(100),
point int(255),
status tinyint(4)
);

insert into tbl_point(member_name,point,status) 
values ('Uin',50,'1'),
('Uin',5,'1'),
('Mia',100,'0'),
('Mia',5,'1'),
('Milo',5,'0'),
('Uin',10,'1'),
('Mia',40,'1'),
('Mia',10,'1');

select * from tbl_point;

select member_name,sum(point) as total_point 
from tbl_point group by member_name having total_point > 50 order by total_point;

---------------------------------------------------------------------------
-- Tugas12

create table tbl_siswa(
id int auto_increment primary key,
nama varchar(255) not null
);

create table tbl_nilai(
id int auto_increment primary key,
id_mapel int not null,
id_siswa int not null,
nilai int(255) not null
);

insert into tbl_siswa(nama) value('Uin'),('Mia'),('Milo'),('Marbel');
insert into tbl_nilai(id_mapel,id_siswa,nilai)
value (3,1,80),(3,4,95),(3,2,70),(3,3,85),(4,1,80);

select * from tbl_siswa;
select * from tbl_nilai;


select a.nama,a.nilai from 
(
	select ts.nama,tn.nilai from tbl_siswa ts 
	left join tbl_nilai tn on ts.id = tn.id_siswa group by ts.nama 
) a 
where a.nilai = 
(
	select max(nilai) from tbl_nilai where id_mapel =3 
);


-- ----------------------------------------------------------

create database tugasakhirmysql;

use tugasakhirmysql;

show tables;

-- Jawaban No.1
select * from customer;
select AGENT_CODE, AGENT_NAME, WORKING_AREA from agents;


-- jawaban No.2
select * from customer where CUST_COUNTRY = 'USA';

-- Jawaban N0.3

select * from customer where CUST_NAME like 'Ra%' limit 0,10;

-- Jawaban No.4

select * from customer where CUST_COUNTRY = 'USA' OR CUST_COUNTRY ='Canada' ;

-- Jawaban No. 5

select * from customer where PAYMENT_AMT between (select avg(OUTSTANDING_AMT) from customer) and (select max(OUTSTANDING_AMT) from customer) ;



-- Jawaban No. 6

select * from customer inner join agents using(AGENT_CODE);

-- Jawaban No. 7

select * from customer c left join agents a on c.AGENT_CODE <> a.AGENT_CODE;

-- Jawaban No. 8

select * from customer c left join agents a on c.AGENT_CODE = a.AGENT_CODE;

-- Jawaban No. 9

select CUST_COUNTRY as 'Negara Customer',count(CUST_COUNTRY) as Jumlah  from customer group by CUST_COUNTRY;

-- Jawaban No. 10

select * from 
(
	select c.CUST_NAME as Customer,a.AGENT_NAME as Agent,a.WORKING_AREA as Kota,c.CUST_COUNTRY as Negara,c.OUTSTANDING_AMT as Unpaid 
	from customer c join agents a on a.AGENT_CODE = c.AGENT_CODE
) a where a.Unpaid > 
(
	select avg(OUTSTANDING_AMT) from customer
);

select avg(OUTSTANDING_AMT) from customer;



