
create database test20221114;
show create database test20221114;
drop database test20221114;
drop database if exists test20221114;
show databases;


create database karyawan;
use karyawan;
show tables;

show databases;
create database TugasPraktik1;
use TugasPraktik1;
drop database TugasPraktik1;


-- ----------------------------------------------

create database gamelab_latihan;
use gamelab_latihan;

CREATE TABLE tasks (
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255) NOT NULL,
start_date DATE,
due_date DATE,
status TINYINT NOT NULL,
priority TINYINT NOT NULL,
description TEXT,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=INNODB;

show tables;

select * from tasks;

describe tasks;

rename table tasks to tbl_tasks;

-- -----------------------------------------------------

create table `siswa`(
`id` int(11) not Null auto_increment,
`nama_depan` varchar(10) not null,
`nama_belakang` varchar(15) default null,
primary key (`id`)
) ENgine=innodb default CHARSET=latin1;

show tables;


-- menambah kolom
alter table siswa add column if not exists tanggal_lahir date;

describe siswa;

-- mengahapus kolom
alter table siswa drop column tanggal_lahir;

-- mengubah kolom
alter table siswa modify nama_belakang varchar(25);

describe siswa;

----------------------------------------------------------

create table insurances(
id int auto_increment,
title varchar(100) not null,
effectiveDate DATE not null,
duration INT NOT NULL,
amount dec(10, 2) not null,
primary key(id)
);

show tables;

drop table insurances;



-- -------------------------------------
-- Insert dan multiple insert 

use karyawan;
show tables;
select * from tasks;

CREATE TABLE if not exists tasks (
task_id INT AUTO_INCREMENT primary key,
title VARCHAR(255) NOT NULL,
start_date DATE,
due_date DATE,
status TINYINT NOT NULL,
priority TINYINT NOT NULL,
description TEXT
) ENGINE=INNODB;


insert into tasks(title,status,priority) 
values
('Learn Mysql Insert',0,1);

select * from tasks;

insert into tasks(title,status,priority) 
values
('Learn Mysql Alter',0,1),
('Learn Mysql Drop',0,1);


-- -----------------------------------------------


create database employee;

use employee;

create table list(
nip int auto_increment primary key,
first_name varchar(100) not null,
last_name varchar(100) not null,
email varchar (255) not null
);

select * from list;

select first_name, last_name, email from list;

insert into list(first_name, last_name, email) values ('agus','hari mukti','agus@gmail.com');

update list set email = 'agus@ymail.com' where nip =1;


-- -------------------------------------------------------

show tables;

create database country;
use country;

create table cities (
id int auto_increment primary key,
name varchar(50),
population int not null
);

insert into cities(name,population) 
values ('arizona', 99999),
('madagaskar',100009),
('madagaskar',100009),
('madagaskar',100009),
('florida',912002);

select  * from cities where population > 1 order by id limit 2, 3;

update cities set name = replace(name, 'arizona','virginia');

delete from cities where id = '1';

truncate table cities;

------------------------------------------------------------

create table members (
member_id int auto_increment,
name varchar(100),
primary key (member_id)
);

create table committees(
comittee_id int auto_increment,
name varchar(100),
primary key (comittee_id)
);

insert into members(name)
values ('John'),('Jane'),('Marry'),('David'),('Amelia')

insert into committees(name)
values ('John'),('Marry'),('Amelia'),('Joe')


select * from  members;
select * from  committees;

-- truncate table committees; 

select m.member_id, m.name as members, c.comittee_id, c.name as committee 
from members as m inner join committees as c on c.name = m.name;


---------------------------------------------------------------------
-- latihan 10 cross join

create database if not exists salesdb;
use salesdb;

create table product(
id int primary key auto_increment,
product_name varchar(100),
price decimal(13,2 )
);

create table stores(
id int primary key auto_increment,
store_name varchar(100)
);

create table sales(
product_id int,
store_id int,
quantity decimal(13,2 ) not null,
sales_date date not null,
primary key (product_id, store_id),
foreign key (product_id)
	references product (id)
	on delete cascade on update cascade,
foreign key (store_id)
	references stores (id)
	on delete cascade on update cascade
);

insert into product(product_name, price)
values ('iPhone', 699), ('iPad', 599), ('MacBook Pro', 1299);

insert into stores(store_name)
values('north'),('south');

insert into sales(store_id,product_id,quantity,sales_date)
values	(1,1,20,'2017-01-02'),
		(1,2,15,'2017-01-05'),
		(1,3,25,'2017-01-05'),
		(2,1,30,'2017-01-02'),
		(2,2,35,'2017-01-05');
	
	
select store_name, product_name, sum(quantity * price) as revenue
from sales inner join product on product.id = sales.product_id 
inner join stores on stores.id = sales.store_id group by store_name, product_name;

select store_name, product_name from stores as a cross join product as b;

select b.store_name, a.product_name, ifnull(c.revenue, 0) as revenue
from product as a cross join stores as b left join
(
	select stores.id as store_id, product.id as product_id, store_name, product_name, 
	round(sum(quantity*price), 0) as revenue
	from sales 
	inner join product on product.id = sales.product_id
	inner join stores on stores.id = sales.store_id 
	group by stores.id, product.id, store_name, product_name
)
as c
on c.store_id = b.id and c.product_id = a.id order by  b.store_name;


-- --------------------------------------------------------------------------

use penampung_data;

show tables;

select * from customer;

