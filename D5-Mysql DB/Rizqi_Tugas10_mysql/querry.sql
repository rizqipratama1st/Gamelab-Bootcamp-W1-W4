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

