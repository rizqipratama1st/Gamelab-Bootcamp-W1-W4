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
